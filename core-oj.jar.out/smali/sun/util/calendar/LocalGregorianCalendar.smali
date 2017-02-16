.class public Lsun/util/calendar/LocalGregorianCalendar;
.super Lsun/util/calendar/BaseCalendar;
.source "LocalGregorianCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/util/calendar/LocalGregorianCalendar$Date;
    }
.end annotation


# instance fields
.field private eras:[Lsun/util/calendar/Era;

.field private name:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "eras"    # [Lsun/util/calendar/Era;

    .prologue
    .line 188
    invoke-direct {p0}, Lsun/util/calendar/BaseCalendar;-><init>()V

    .line 189
    iput-object p1, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    .line 190
    iput-object p2, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    .line 191
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->setEras([Lsun/util/calendar/Era;)V

    .line 188
    return-void
.end method

.method private adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 10
    .param p1, "ldate"    # Lsun/util/calendar/LocalGregorianCalendar$Date;
    .param p2, "millis"    # J
    .param p4, "zoneOffset"    # I

    .prologue
    const/4 v8, 0x0

    .line 217
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v5, v5

    add-int/lit8 v1, v5, -0x1

    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    .line 218
    iget-object v5, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v0, v5, v1

    .line 219
    .local v0, "era":Lsun/util/calendar/Era;
    invoke-virtual {v0, v8}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v2

    .line 220
    .local v2, "since":J
    invoke-virtual {v0}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 221
    int-to-long v6, p4

    sub-long/2addr v2, v6

    .line 223
    :cond_0
    cmp-long v5, p2, v2

    if-ltz v5, :cond_3

    .line 224
    invoke-virtual {p1, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 225
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v6

    invoke-virtual {v6}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/lit8 v4, v5, 0x1

    .line 226
    .local v4, "y":I
    invoke-virtual {p1, v4}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 230
    .end local v0    # "era":Lsun/util/calendar/Era;
    .end local v2    # "since":J
    .end local v4    # "y":I
    :cond_1
    if-gez v1, :cond_2

    .line 231
    invoke-virtual {p1, v8}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 232
    invoke-virtual {p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v5

    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 234
    :cond_2
    const/4 v5, 0x1

    invoke-virtual {p1, v5}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 235
    return-object p1

    .line 217
    .restart local v0    # "era":Lsun/util/calendar/Era;
    .restart local v2    # "since":J
    :cond_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_0
.end method

.method static getLocalGregorianCalendar(Ljava/lang/String;)Lsun/util/calendar/LocalGregorianCalendar;
    .locals 27
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 121
    const/4 v4, 0x0

    .line 124
    .local v4, "calendarProps":Ljava/util/Properties;
    :try_start_0
    new-instance v24, Lsun/security/action/GetPropertyAction;

    const-string/jumbo v25, "java.home"

    invoke-direct/range {v24 .. v25}, Lsun/security/action/GetPropertyAction;-><init>(Ljava/lang/String;)V

    .line 123
    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 125
    .local v16, "homeDir":Ljava/lang/String;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, "lib"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v25, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    .line 126
    const-string/jumbo v25, "calendars.properties"

    .line 125
    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 127
    .local v15, "fname":Ljava/lang/String;
    new-instance v24, Lsun/util/calendar/LocalGregorianCalendar$1;

    move-object/from16 v0, v24

    invoke-direct {v0, v15}, Lsun/util/calendar/LocalGregorianCalendar$1;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "calendarProps":Ljava/util/Properties;
    check-cast v4, Ljava/util/Properties;
    :try_end_0
    .catch Ljava/security/PrivilegedActionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    .local v4, "calendarProps":Ljava/util/Properties;
    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v25, "calendar."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string/jumbo v25, ".eras"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 142
    .local v22, "props":Ljava/lang/String;
    if-nez v22, :cond_0

    .line 143
    const/16 v24, 0x0

    return-object v24

    .line 136
    .end local v4    # "calendarProps":Ljava/util/Properties;
    .end local v15    # "fname":Ljava/lang/String;
    .end local v16    # "homeDir":Ljava/lang/String;
    .end local v22    # "props":Ljava/lang/String;
    :catch_0
    move-exception v11

    .line 137
    .local v11, "e":Ljava/security/PrivilegedActionException;
    new-instance v24, Ljava/lang/RuntimeException;

    invoke-virtual {v11}, Ljava/security/PrivilegedActionException;->getException()Ljava/lang/Exception;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v24

    .line 145
    .end local v11    # "e":Ljava/security/PrivilegedActionException;
    .restart local v4    # "calendarProps":Ljava/util/Properties;
    .restart local v15    # "fname":Ljava/lang/String;
    .restart local v16    # "homeDir":Ljava/lang/String;
    .restart local v22    # "props":Ljava/lang/String;
    :cond_0
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v14, "eras":Ljava/util/List;, "Ljava/util/List<Lsun/util/calendar/Era;>;"
    new-instance v13, Ljava/util/StringTokenizer;

    const-string/jumbo v24, ";"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-direct {v13, v0, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    .local v13, "eraTokens":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_7

    .line 148
    invoke-virtual {v13}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v20

    .line 149
    .local v20, "items":Ljava/lang/String;
    new-instance v19, Ljava/util/StringTokenizer;

    const-string/jumbo v24, ","

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .local v19, "itemTokens":Ljava/util/StringTokenizer;
    const/4 v6, 0x0

    .line 151
    .local v6, "eraName":Ljava/lang/String;
    const/4 v10, 0x1

    .line 152
    .local v10, "localTime":Z
    const-wide/16 v8, 0x0

    .line 153
    .local v8, "since":J
    const/4 v7, 0x0

    .line 155
    .end local v6    # "eraName":Ljava/lang/String;
    :goto_1
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v24

    if-eqz v24, :cond_6

    .line 156
    invoke-virtual/range {v19 .. v19}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v18

    .line 157
    .local v18, "item":Ljava/lang/String;
    const/16 v24, 0x3d

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v17

    .line 159
    .local v17, "index":I
    const/16 v24, -0x1

    move/from16 v0, v17

    move/from16 v1, v24

    if-ne v0, v1, :cond_1

    .line 160
    const/16 v24, 0x0

    return-object v24

    .line 162
    :cond_1
    const/16 v24, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v24

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 163
    .local v21, "key":Ljava/lang/String;
    add-int/lit8 v24, v17, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v23

    .line 164
    .local v23, "value":Ljava/lang/String;
    const-string/jumbo v24, "name"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_2

    .line 165
    move-object/from16 v6, v23

    .local v6, "eraName":Ljava/lang/String;
    goto :goto_1

    .line 166
    .end local v6    # "eraName":Ljava/lang/String;
    :cond_2
    const-string/jumbo v24, "since"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_4

    .line 167
    const-string/jumbo v24, "u"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v24

    if-eqz v24, :cond_3

    .line 168
    const/4 v10, 0x0

    .line 169
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v24

    add-int/lit8 v24, v24, -0x1

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v25

    move/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v24 .. v24}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 171
    :cond_3
    invoke-static/range {v23 .. v23}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    goto :goto_1

    .line 173
    :cond_4
    const-string/jumbo v24, "abbr"

    move-object/from16 v0, v24

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_5

    .line 174
    move-object/from16 v7, v23

    .local v7, "abbr":Ljava/lang/String;
    goto/16 :goto_1

    .line 176
    .end local v7    # "abbr":Ljava/lang/String;
    :cond_5
    new-instance v24, Ljava/lang/RuntimeException;

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v26, "Unknown key word: "

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-direct/range {v24 .. v25}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v24

    .line 179
    .end local v17    # "index":I
    .end local v18    # "item":Ljava/lang/String;
    .end local v21    # "key":Ljava/lang/String;
    .end local v23    # "value":Ljava/lang/String;
    :cond_6
    new-instance v5, Lsun/util/calendar/Era;

    invoke-direct/range {v5 .. v10}, Lsun/util/calendar/Era;-><init>(Ljava/lang/String;Ljava/lang/String;JZ)V

    .line 180
    .local v5, "era":Lsun/util/calendar/Era;
    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 182
    .end local v5    # "era":Lsun/util/calendar/Era;
    .end local v8    # "since":J
    .end local v10    # "localTime":Z
    .end local v19    # "itemTokens":Ljava/util/StringTokenizer;
    .end local v20    # "items":Ljava/lang/String;
    :cond_7
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v0, v24

    new-array v12, v0, [Lsun/util/calendar/Era;

    .line 183
    .local v12, "eraArray":[Lsun/util/calendar/Era;
    invoke-interface {v14, v12}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 185
    new-instance v24, Lsun/util/calendar/LocalGregorianCalendar;

    move-object/from16 v0, v24

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v12}, Lsun/util/calendar/LocalGregorianCalendar;-><init>(Ljava/lang/String;[Lsun/util/calendar/Era;)V

    return-object v24
.end method

.method private validateEra(Lsun/util/calendar/Era;)Z
    .locals 2
    .param p1, "era"    # Lsun/util/calendar/Era;

    .prologue
    .line 262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 263
    iget-object v1, p0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_0

    .line 264
    const/4 v1, 0x1

    return v1

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_1
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public bridge synthetic getCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 198
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(J)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 202
    invoke-virtual {p0, p1, p2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 206
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 210
    invoke-virtual {p0, p1, p2, p3}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3

    .prologue
    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(J)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J

    .prologue
    .line 203
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLjava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "millis"    # J
    .param p3, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 207
    invoke-virtual {p0, p3}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lsun/util/calendar/LocalGregorianCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 3
    .param p1, "millis"    # J
    .param p3, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 211
    invoke-super {p0, p1, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDate(JLsun/util/calendar/CalendarDate;)Lsun/util/calendar/CalendarDate;

    move-result-object v0

    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 212
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getZoneOffset()I

    move-result v1

    invoke-direct {p0, v0, p1, p2, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v1

    return-object v1
.end method

.method public getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V
    .locals 6
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;
    .param p2, "fixedDate"    # J

    .prologue
    move-object v0, p1

    .line 377
    check-cast v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 378
    .local v0, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-super {p0, v0, p2, p3}, Lsun/util/calendar/BaseCalendar;->getCalendarDateFromFixedDate(Lsun/util/calendar/CalendarDate;J)V

    .line 379
    const-wide/32 v2, 0xaf93b

    sub-long v2, p2, v2

    const-wide/32 v4, 0x5265c00

    mul-long/2addr v2, v4

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lsun/util/calendar/LocalGregorianCalendar;->adjustYear(Lsun/util/calendar/LocalGregorianCalendar$Date;JI)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 376
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lsun/util/calendar/LocalGregorianCalendar;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isLeapYear(I)Z
    .locals 1
    .param p1, "gregorianYear"    # I

    .prologue
    .line 365
    invoke-static {p1}, Lsun/util/calendar/CalendarUtils;->isGregorianLeapYear(I)Z

    move-result v0

    return v0
.end method

.method public isLeapYear(Lsun/util/calendar/Era;I)Z
    .locals 2
    .param p1, "era"    # Lsun/util/calendar/Era;
    .param p2, "year"    # I

    .prologue
    .line 369
    if-nez p1, :cond_0

    .line 370
    invoke-virtual {p0, p2}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1

    .line 372
    :cond_0
    invoke-virtual {p1}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v1

    invoke-virtual {v1}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v1

    add-int/2addr v1, p2

    add-int/lit8 v0, v1, -0x1

    .line 373
    .local v0, "gyear":I
    invoke-virtual {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->isLeapYear(I)Z

    move-result v1

    return v1
.end method

.method public bridge synthetic newCalendarDate()Lsun/util/calendar/CalendarDate;
    .locals 1

    .prologue
    .line 238
    invoke-virtual {p0}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/CalendarDate;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 242
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    move-result-object v0

    return-object v0
.end method

.method public newCalendarDate()Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1

    .prologue
    .line 239
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>()V

    return-object v0
.end method

.method public newCalendarDate(Ljava/util/TimeZone;)Lsun/util/calendar/LocalGregorianCalendar$Date;
    .locals 1
    .param p1, "zone"    # Ljava/util/TimeZone;

    .prologue
    .line 243
    new-instance v0, Lsun/util/calendar/LocalGregorianCalendar$Date;

    invoke-direct {v0, p1}, Lsun/util/calendar/LocalGregorianCalendar$Date;-><init>(Ljava/util/TimeZone;)V

    return-object v0
.end method

.method public normalize(Lsun/util/calendar/CalendarDate;)Z
    .locals 24
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 271
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->isNormalized()Z

    move-result v22

    if-eqz v22, :cond_0

    .line 272
    const/16 v22, 0x1

    return v22

    .line 275
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    move-object/from16 v6, p1

    .line 276
    check-cast v6, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 279
    .local v6, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    move-object/from16 v0, p0

    invoke-super {v0, v6}, Lsun/util/calendar/BaseCalendar;->normalize(Lsun/util/calendar/CalendarDate;)Z

    .line 281
    const/4 v4, 0x0

    .line 282
    .local v4, "hasMillis":Z
    const-wide/16 v8, 0x0

    .line 283
    .local v8, "millis":J
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v21

    .line 285
    .local v21, "year":I
    const/4 v3, 0x0

    .line 286
    .local v3, "era":Lsun/util/calendar/Era;
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v5, v22, -0x1

    .end local v3    # "era":Lsun/util/calendar/Era;
    .local v5, "i":I
    :goto_0
    if-ltz v5, :cond_1

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lsun/util/calendar/LocalGregorianCalendar;->eras:[Lsun/util/calendar/Era;

    move-object/from16 v22, v0

    aget-object v3, v22, v5

    .line 288
    .local v3, "era":Lsun/util/calendar/Era;
    invoke-virtual {v3}, Lsun/util/calendar/Era;->isLocalTime()Z

    move-result v22

    if-eqz v22, :cond_3

    .line 289
    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v12

    .line 290
    .local v12, "sinceDate":Lsun/util/calendar/CalendarDate;
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v15

    .line 291
    .local v15, "sinceYear":I
    move/from16 v0, v21

    if-le v0, v15, :cond_2

    .line 329
    .end local v3    # "era":Lsun/util/calendar/Era;
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v15    # "sinceYear":I
    :cond_1
    :goto_1
    if-ltz v5, :cond_6

    .line 330
    invoke-virtual {v6, v3}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalEra(Lsun/util/calendar/Era;)V

    .line 331
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getNormalizedYear()I

    move-result v22

    invoke-virtual {v3}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v23

    sub-int v22, v22, v23

    add-int/lit8 v20, v22, 0x1

    .line 332
    .local v20, "y":I
    move/from16 v0, v20

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 339
    .end local v20    # "y":I
    :goto_2
    const/16 v22, 0x1

    move/from16 v0, v22

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalized(Z)V

    .line 340
    const/16 v22, 0x1

    return v22

    .line 294
    .restart local v3    # "era":Lsun/util/calendar/Era;
    .restart local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .restart local v15    # "sinceYear":I
    :cond_2
    move/from16 v0, v21

    if-ne v0, v15, :cond_5

    .line 295
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getMonth()I

    move-result v7

    .line 296
    .local v7, "month":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getMonth()I

    move-result v14

    .line 297
    .local v14, "sinceMonth":I
    if-gt v7, v14, :cond_1

    .line 300
    if-ne v7, v14, :cond_5

    .line 301
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getDayOfMonth()I

    move-result v2

    .line 302
    .local v2, "day":I
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getDayOfMonth()I

    move-result v13

    .line 303
    .local v13, "sinceDay":I
    if-gt v2, v13, :cond_1

    .line 306
    if-ne v2, v13, :cond_5

    .line 307
    invoke-virtual {v6}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getTimeOfDay()J

    move-result-wide v18

    .line 308
    .local v18, "timeOfDay":J
    invoke-virtual {v12}, Lsun/util/calendar/CalendarDate;->getTimeOfDay()J

    move-result-wide v16

    .line 309
    .local v16, "sinceTimeOfDay":J
    cmp-long v22, v18, v16

    if-gez v22, :cond_1

    .line 312
    add-int/lit8 v5, v5, -0x1

    .line 313
    goto :goto_1

    .line 318
    .end local v2    # "day":I
    .end local v7    # "month":I
    .end local v12    # "sinceDate":Lsun/util/calendar/CalendarDate;
    .end local v13    # "sinceDay":I
    .end local v14    # "sinceMonth":I
    .end local v15    # "sinceYear":I
    .end local v16    # "sinceTimeOfDay":J
    .end local v18    # "timeOfDay":J
    :cond_3
    if-nez v4, :cond_4

    .line 319
    invoke-super/range {p0 .. p1}, Lsun/util/calendar/BaseCalendar;->getTime(Lsun/util/calendar/CalendarDate;)J

    move-result-wide v8

    .line 320
    const/4 v4, 0x1

    .line 323
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lsun/util/calendar/CalendarDate;->getZone()Ljava/util/TimeZone;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v3, v0}, Lsun/util/calendar/Era;->getSince(Ljava/util/TimeZone;)J

    move-result-wide v10

    .line 324
    .local v10, "since":J
    cmp-long v22, v8, v10

    if-gez v22, :cond_1

    .line 286
    .end local v10    # "since":J
    :cond_5
    add-int/lit8 v5, v5, -0x1

    goto/16 :goto_0

    .line 335
    .end local v3    # "era":Lsun/util/calendar/Era;
    :cond_6
    const/16 v22, 0x0

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setEra(Lsun/util/calendar/Era;)Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 336
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setLocalYear(I)V

    .line 337
    move/from16 v0, v21

    invoke-virtual {v6, v0}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_2
.end method

.method normalizeMonth(Lsun/util/calendar/CalendarDate;)V
    .locals 0
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    .line 344
    invoke-virtual {p0, p1}, Lsun/util/calendar/LocalGregorianCalendar;->normalizeYear(Lsun/util/calendar/CalendarDate;)V

    .line 345
    invoke-super {p0, p1}, Lsun/util/calendar/BaseCalendar;->normalizeMonth(Lsun/util/calendar/CalendarDate;)V

    .line 343
    return-void
.end method

.method normalizeYear(Lsun/util/calendar/CalendarDate;)V
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    move-object v1, p1

    .line 349
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 352
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 353
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_0

    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 356
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 348
    :goto_0
    return-void

    .line 354
    :cond_0
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_0
.end method

.method public validate(Lsun/util/calendar/CalendarDate;)Z
    .locals 4
    .param p1, "date"    # Lsun/util/calendar/CalendarDate;

    .prologue
    move-object v1, p1

    .line 247
    check-cast v1, Lsun/util/calendar/LocalGregorianCalendar$Date;

    .line 248
    .local v1, "ldate":Lsun/util/calendar/LocalGregorianCalendar$Date;
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getEra()Lsun/util/calendar/Era;

    move-result-object v0

    .line 249
    .local v0, "era":Lsun/util/calendar/Era;
    if-eqz v0, :cond_1

    .line 250
    invoke-direct {p0, v0}, Lsun/util/calendar/LocalGregorianCalendar;->validateEra(Lsun/util/calendar/Era;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 251
    const/4 v2, 0x0

    return v2

    .line 253
    :cond_0
    invoke-virtual {v0}, Lsun/util/calendar/Era;->getSinceDate()Lsun/util/calendar/CalendarDate;

    move-result-object v2

    invoke-virtual {v2}, Lsun/util/calendar/CalendarDate;->getYear()I

    move-result v2

    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    .line 257
    :goto_0
    invoke-super {p0, v1}, Lsun/util/calendar/BaseCalendar;->validate(Lsun/util/calendar/CalendarDate;)Z

    move-result v2

    return v2

    .line 255
    :cond_1
    invoke-virtual {v1}, Lsun/util/calendar/LocalGregorianCalendar$Date;->getYear()I

    move-result v2

    invoke-virtual {v1, v2}, Lsun/util/calendar/LocalGregorianCalendar$Date;->setNormalizedYear(I)V

    goto :goto_0
.end method
