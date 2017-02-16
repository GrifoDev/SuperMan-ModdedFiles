.class public Ljava/util/logging/XMLFormatter;
.super Ljava/util/logging/Formatter;
.source "XMLFormatter.java"


# instance fields
.field private manager:Ljava/util/logging/LogManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/util/logging/Formatter;-><init>()V

    .line 47
    invoke-static {}, Ljava/util/logging/LogManager;->getLogManager()Ljava/util/logging/LogManager;

    move-result-object v0

    iput-object v0, p0, Ljava/util/logging/XMLFormatter;->manager:Ljava/util/logging/LogManager;

    .line 46
    return-void
.end method

.method private a2(Ljava/lang/StringBuffer;I)V
    .locals 1
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "x"    # I

    .prologue
    .line 51
    const/16 v0, 0xa

    if-ge p2, v0, :cond_0

    .line 52
    const/16 v0, 0x30

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 54
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 50
    return-void
.end method

.method private appendISO8601(Ljava/lang/StringBuffer;J)V
    .locals 4
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "millis"    # J

    .prologue
    const/16 v3, 0x3a

    const/16 v2, 0x2d

    .line 59
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 60
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getYear()I

    move-result v1

    add-int/lit16 v1, v1, 0x76c

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 61
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 62
    invoke-virtual {v0}, Ljava/util/Date;->getMonth()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    .line 63
    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 64
    invoke-virtual {v0}, Ljava/util/Date;->getDate()I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    .line 65
    const/16 v1, 0x54

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 66
    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    .line 67
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 68
    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    .line 69
    invoke-virtual {p1, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v0}, Ljava/util/Date;->getSeconds()I

    move-result v1

    invoke-direct {p0, p1, v1}, Ljava/util/logging/XMLFormatter;->a2(Ljava/lang/StringBuffer;I)V

    .line 58
    return-void
.end method

.method private escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "sb"    # Ljava/lang/StringBuffer;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p2, :cond_0

    .line 78
    const-string/jumbo p2, "<null>"

    .line 80
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 82
    .local v0, "ch":C
    const/16 v2, 0x3c

    if-ne v0, v2, :cond_1

    .line 83
    const-string/jumbo v2, "&lt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 84
    :cond_1
    const/16 v2, 0x3e

    if-ne v0, v2, :cond_2

    .line 85
    const-string/jumbo v2, "&gt;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 86
    :cond_2
    const/16 v2, 0x26

    if-ne v0, v2, :cond_3

    .line 87
    const-string/jumbo v2, "&amp;"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 89
    :cond_3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 76
    .end local v0    # "ch":C
    :cond_4
    return-void
.end method


# virtual methods
.method public format(Ljava/util/logging/LogRecord;)Ljava/lang/String;
    .locals 12
    .param p1, "record"    # Ljava/util/logging/LogRecord;

    .prologue
    .line 105
    new-instance v7, Ljava/lang/StringBuffer;

    const/16 v10, 0x1f4

    invoke-direct {v7, v10}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 106
    .local v7, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v10, "<record>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    const-string/jumbo v10, "  <date>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v10

    invoke-direct {p0, v7, v10, v11}, Ljava/util/logging/XMLFormatter;->appendISO8601(Ljava/lang/StringBuffer;J)V

    .line 110
    const-string/jumbo v10, "</date>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 112
    const-string/jumbo v10, "  <millis>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 113
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMillis()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 114
    const-string/jumbo v10, "</millis>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 116
    const-string/jumbo v10, "  <sequence>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSequenceNumber()J

    move-result-wide v10

    invoke-virtual {v7, v10, v11}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    .line 118
    const-string/jumbo v10, "</sequence>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 120
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLoggerName()Ljava/lang/String;

    move-result-object v5

    .line 121
    .local v5, "name":Ljava/lang/String;
    if-eqz v5, :cond_0

    .line 122
    const-string/jumbo v10, "  <logger>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    invoke-direct {p0, v7, v5}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 124
    const-string/jumbo v10, "</logger>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 127
    :cond_0
    const-string/jumbo v10, "  <level>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 128
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getLevel()Ljava/util/logging/Level;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/logging/Level;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 129
    const-string/jumbo v10, "</level>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 131
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 132
    const-string/jumbo v10, "  <class>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 133
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 134
    const-string/jumbo v10, "</class>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 137
    :cond_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 138
    const-string/jumbo v10, "  <method>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 139
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getSourceMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 140
    const-string/jumbo v10, "</method>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 143
    :cond_2
    const-string/jumbo v10, "  <thread>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 144
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThreadID()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 145
    const-string/jumbo v10, "</thread>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 147
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    .line 149
    invoke-virtual {p0, p1}, Ljava/util/logging/XMLFormatter;->formatMessage(Ljava/util/logging/LogRecord;)Ljava/lang/String;

    move-result-object v4

    .line 150
    .local v4, "message":Ljava/lang/String;
    const-string/jumbo v10, "  <message>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    invoke-direct {p0, v7, v4}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 152
    const-string/jumbo v10, "</message>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 153
    const-string/jumbo v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    .end local v4    # "message":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundle()Ljava/util/ResourceBundle;

    move-result-object v0

    .line 163
    .local v0, "bundle":Ljava/util/ResourceBundle;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    .line 164
    const-string/jumbo v10, "  <key>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 165
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 166
    const-string/jumbo v10, "</key>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 167
    const-string/jumbo v10, "  <catalog>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 168
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getResourceBundleName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 169
    const-string/jumbo v10, "</catalog>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 175
    :cond_3
    :goto_1
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getParameters()[Ljava/lang/Object;

    move-result-object v6

    .line 178
    .local v6, "parameters":[Ljava/lang/Object;
    if-eqz v6, :cond_5

    array-length v10, v6

    if-eqz v10, :cond_5

    .line 179
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getMessage()Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "{"

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-ne v10, v11, :cond_5

    .line 180
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    array-length v10, v6

    if-ge v3, v10, :cond_5

    .line 181
    const-string/jumbo v10, "  <param>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 183
    :try_start_1
    aget-object v10, v6, v3

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 187
    :goto_3
    const-string/jumbo v10, "</param>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 155
    .end local v0    # "bundle":Ljava/util/ResourceBundle;
    .end local v3    # "i":I
    .end local v6    # "parameters":[Ljava/lang/Object;
    :cond_4
    const-string/jumbo v10, "<message/>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 156
    const-string/jumbo v10, "\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 184
    .restart local v0    # "bundle":Ljava/util/ResourceBundle;
    .restart local v3    # "i":I
    .restart local v6    # "parameters":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 185
    .local v1, "ex":Ljava/lang/Exception;
    const-string/jumbo v10, "???"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 191
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v3    # "i":I
    :cond_5
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v10

    if-eqz v10, :cond_8

    .line 193
    invoke-virtual {p1}, Ljava/util/logging/LogRecord;->getThrown()Ljava/lang/Throwable;

    move-result-object v8

    .line 194
    .local v8, "th":Ljava/lang/Throwable;
    const-string/jumbo v10, "  <exception>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 195
    const-string/jumbo v10, "    <message>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 196
    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 197
    const-string/jumbo v10, "</message>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 198
    invoke-virtual {v8}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v9

    .line 199
    .local v9, "trace":[Ljava/lang/StackTraceElement;
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    array-length v10, v9

    if-ge v3, v10, :cond_7

    .line 200
    aget-object v2, v9, v3

    .line 201
    .local v2, "frame":Ljava/lang/StackTraceElement;
    const-string/jumbo v10, "    <frame>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 202
    const-string/jumbo v10, "      <class>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 203
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 204
    const-string/jumbo v10, "</class>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 205
    const-string/jumbo v10, "      <method>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 206
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v7, v10}, Ljava/util/logging/XMLFormatter;->escape(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    .line 207
    const-string/jumbo v10, "</method>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 209
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    if-ltz v10, :cond_6

    .line 210
    const-string/jumbo v10, "      <line>"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 211
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 212
    const-string/jumbo v10, "</line>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 214
    :cond_6
    const-string/jumbo v10, "    </frame>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 199
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 216
    .end local v2    # "frame":Ljava/lang/StackTraceElement;
    :cond_7
    const-string/jumbo v10, "  </exception>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 219
    .end local v3    # "i":I
    .end local v8    # "th":Ljava/lang/Throwable;
    .end local v9    # "trace":[Ljava/lang/StackTraceElement;
    :cond_8
    const-string/jumbo v10, "</record>\n"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    return-object v10

    .line 171
    .end local v6    # "parameters":[Ljava/lang/Object;
    :catch_1
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/Exception;
    goto/16 :goto_1
.end method

.method public getHead(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 5
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 230
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 232
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string/jumbo v4, "<?xml version=\"1.0\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    if-eqz p1, :cond_1

    .line 235
    invoke-virtual {p1}, Ljava/util/logging/Handler;->getEncoding()Ljava/lang/String;

    move-result-object v1

    .line 240
    :goto_0
    if-nez v1, :cond_0

    .line 242
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    .line 246
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    .line 247
    .local v0, "cs":Ljava/nio/charset/Charset;
    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 253
    .end local v0    # "cs":Ljava/nio/charset/Charset;
    :goto_1
    const-string/jumbo v4, " encoding=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 254
    invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 255
    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 256
    const-string/jumbo v4, " standalone=\"no\"?>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 257
    const-string/jumbo v4, "<!DOCTYPE log SYSTEM \"logger.dtd\">\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 258
    const-string/jumbo v4, "<log>\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 259
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 237
    :cond_1
    const/4 v1, 0x0

    .local v1, "encoding":Ljava/lang/String;
    goto :goto_0

    .line 248
    .end local v1    # "encoding":Ljava/lang/String;
    :catch_0
    move-exception v2

    .local v2, "ex":Ljava/lang/Exception;
    goto :goto_1
.end method

.method public getTail(Ljava/util/logging/Handler;)Ljava/lang/String;
    .locals 1
    .param p1, "h"    # Ljava/util/logging/Handler;

    .prologue
    .line 269
    const-string/jumbo v0, "</log>\n"

    return-object v0
.end method
