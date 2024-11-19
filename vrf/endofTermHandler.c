int endOfTermHandler(){
    SECURE_new_log_entry();
    if(isChecksumTerm){
        char checksum = 16 * fromHex(term[0]) + fromHex(term[1]);
        if (checksum == parity){
            passedChecksumCount++;
            if (sentenceHasFix){
                ++sentencesWithFixCount;
            }
            // switch(curSentenceType){
                // case GPS_SENTENCE_GPRMC:
            if(curSentenceType == GPS_SENTENCE_GPRMC){
                    date_commit();
                    time_commit();
                    if(sentenceHasFix){
                        location_commit();
                        speed_commit();
                        course_commit();
                    }
                    // break;
            }
                // case GPS_SENTENCE_GPGGA:
            else if(curSentenceType == GPS_SENTENCE_GPGGA){
                time_commit();
                if(sentenceHasFix){
                    location_commit();
                    altitude_commit();
                }
                satellites_commit();
                hdop_commit();
                // break;
            }
               // }
            return 1;
        } else{
            ++failedChecksumCount;  
        }
        return 0;
    }
    if (curTermNumber == 0){
        if(!strcmp(term, _GPRMCterm) || !strcmp(term, _GNRMCterm)){
            curSentenceType = GPS_SENTENCE_GPRMC;
        }else if (!strcmp(term, _GPGGAterm) || !strcmp(term, _GNGGAterm)){
            curSentenceType = GPS_SENTENCE_GPGGA;
        }else{
            curSentenceType = GPS_SENTENCE_OTHER;
        }
        return 0;
    }
    if (curSentenceType != GPS_SENTENCE_OTHER && term[0]){
        // switch(curSentenceType){
            // case GPS_SENTENCE_GPRMC:
        if(curSentenceType == GPS_SENTENCE_GPRMC){
        // switch(curTermNumber){
            if(curTermNumber == 1){
            // case 1:
                time_setTime(term);
                // break
            }
            else if(curTermNumber == 2)
            {
            // case 2:
                // sentenceHasFix = term[0] == 'A';
                // break;
            }
            else if(curTermNumber == 3)
            {
            // case 3:
                location_setLatitude(term);
                // break;
            }
            else if(curTermNumber == 4)
            {
            // case 4:
                rawNewLatDataNegative = term[0] == 'S';
                // break;
            }
            else if(curTermNumber == 5)
            {
            // case 5:
                location_setLongitude(term);
                // break;
            }
            else if(curTermNumber == 6)
            {
            // case 6:
                rawNewLongDataNegative = term[0] == 'W';
                // break;
            }
            else if(curTermNumber == 7)
            {
            // case 7:
                speed_set(term);
                // break;
            }
            else if(curTermNumber == 8)
            {
            // case 8:
                course_set(term);
                // break;
            }
            else if(curTermNumber == 9)
            {
            // case 9:
                date_setDate(term);
                // break;
            }
        }
        // break;
        else if(curSentenceType == GPS_SENTENCE_GPGGA){
            // case GPS_SENTENCE_GPGGA:
            // switch(curTermNumber){                }
            if(curTermNumber == 1)
            {
            // case 1:
                time_setTime(term);
                // break;
            }
            else if(curTermNumber == 2)
            {
            // case 2:
                location_setLatitude(term);
                // break;
            }
            else if(curTermNumber == 3)
            {
            // case 3:
                rawNewLatDataNegative = term[0] == 'S';
                // break;
            }
            else if(curTermNumber == 4)
            {
            // case 4:
                location_setLongitude(term);
                // break;
            }
            else if(curTermNumber == 5)
            {
            // case 5:
                rawNewLongDataNegative = term[0] == 'W';
                // break;
            }
            else if(curTermNumber == 6)
            {
            // case 6:
                sentenceHasFix = term[0] > 0;
                // break;
            }
            else if(curTermNumber == 7)
            {
            // case 7:
                satellites_set(term);
                // break;
            }
            else if(curTermNumber == 8)
            {
            // case 8:
                hdop_set(term);
                // break;
            }
            else if(curTermNumber == 9)
            {
            // case 9:
                altitude_set(term);
                // break;
            }
            // break;
        }
    }
    return 0;
}

int gps_encode(char c) {
    SECURE_new_log_entry();
    ++encodedCharCount;

    // switch(c){
        // case ',':
    if(c == ',')
    {
        parity ^= (uint8_t)c;
    }
    else if(c == '\r' || c =='\n' || c=='*')
        // case '\r':
        // case '\n':
        // case '*':
    {
        int isValidSentence = 0;
        if (curTermOffset < 15){
            term[curTermOffset] = 0;
            isValidSentence = endOfTermHandler();
        }
        ++curTermNumber;
        curTermOffset = 0;
        isChecksumTerm = (int)c == '*';
        return isValidSentence;
    }
    else if (c == '$')
        // case '$':
    {
    curTermNumber = curTermOffset = 0;
    parity = 0;
    curSentenceType = GPS_SENTENCE_OTHER;
    isChecksumTerm = 0;
    sentenceHasFix = 0;
    return 0;
    }
    else {
        // default:
        if (curTermOffset < _GPS_MAX_FIELD_SIZE-1){
            term[curTermOffset++] = c;
        }
        if (!isChecksumTerm){
            parity ^= c;
        }
        return 0;
    }
    // }
    return 0;
}