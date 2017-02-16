.class public Landroid/content/pm/AASATokenParser;
.super Ljava/lang/Object;
.source "AASATokenParser.java"


# instance fields
.field private mArchiveSourcePath:Ljava/lang/String;

.field private mCACertName:Ljava/lang/String;

.field private mCAKeyIndex:Ljava/lang/String;

.field private mCertName:Ljava/lang/String;

.field private mCertPath:Ljava/lang/String;

.field private mIsCalledBySKA:Z

.field private mIsSigned512:Z

.field private mRootCertName:Ljava/lang/String;

.field private mRootKeyIndex:Ljava/lang/String;

.field private mTokenContents:[B

.field private mTokenName:Ljava/lang/String;

.field private mTokenValue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private misAppSystem:Z

.field private misDeviceMode:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 63
    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    .line 64
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 65
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 66
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 68
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    .line 69
    const-string/jumbo v0, "/data/system/.aasa/AASApolicy/ASKS_INTER_1.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCACertName:Ljava/lang/String;

    .line 70
    const-string/jumbo v0, "/system/etc/ASKS_ROOT_1.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mRootCertName:Ljava/lang/String;

    .line 71
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCAKeyIndex:Ljava/lang/String;

    .line 72
    const-string/jumbo v0, ""

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mRootKeyIndex:Ljava/lang/String;

    .line 73
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    .line 75
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    .line 76
    iput-boolean v1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    .line 48
    return-void
.end method

.method private AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1046
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1049
    .local v4, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1050
    .local v3, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1051
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1054
    :try_start_1
    const-string/jumbo v5, "PACKAGE"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1056
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1057
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1058
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1064
    const-string/jumbo v5, "SERIALNUMBER"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1066
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1067
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1068
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1086
    if-eqz v4, :cond_2

    .line 1087
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1088
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, " pass all with devtoken :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    const/4 v5, 0x1

    return v5

    .line 1061
    :cond_0
    return v8

    .line 1071
    :cond_1
    return v8

    .line 1075
    :catch_0
    move-exception v0

    .line 1076
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1077
    return v8

    .line 1081
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v1

    .line 1082
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    return v8

    .line 1092
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_2
    return v8
.end method

.method private AASA_verifyDevice(Ljava/lang/String;)Z
    .locals 9
    .param p1, "deviceID"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 1098
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1102
    .local v4, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1103
    .local v3, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1104
    .local v2, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1107
    :try_start_1
    const-string/jumbo v5, "DEVIEID"

    invoke-direct {p0, v2, v5, v4}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1109
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v3

    .line 1110
    invoke-virtual {v3}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 1111
    new-instance v5, Ljava/io/ByteArrayInputStream;

    iget-object v6, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v5, v6}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v6, "UTF-8"

    invoke-interface {v2, v5, v6}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1129
    if-eqz v4, :cond_1

    .line 1133
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1134
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice OK with "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1135
    const/4 v5, 0x1

    return v5

    .line 1114
    :cond_0
    return v8

    .line 1118
    :catch_0
    move-exception v0

    .line 1119
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice er"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1120
    return v8

    .line 1124
    .end local v0    # "e":Ljava/io/IOException;
    .end local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v3    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v1

    .line 1125
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v5, "AASATokenParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "AASA_verifyDevice err"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return v8

    .line 1139
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v2    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v3    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_1
    return v8
.end method

.method private LEW([BI)I
    .locals 3
    .param p1, "arr"    # [B
    .param p2, "off"    # I

    .prologue
    .line 711
    add-int/lit8 v0, p2, 0x3

    aget-byte v0, p1, v0

    shl-int/lit8 v0, v0, 0x18

    const/high16 v1, -0x1000000

    and-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x2

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x10

    const/high16 v2, 0xff0000

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    add-int/lit8 v1, p2, 0x1

    aget-byte v1, p1, v1

    shl-int/lit8 v1, v1, 0x8

    const v2, 0xff00

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    aget-byte v1, p1, p2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static SHA(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 128
    const-string/jumbo v2, "SHA-1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 129
    .local v0, "md":Ljava/security/MessageDigest;
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 130
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 131
    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 120
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 121
    .local v0, "md":Ljava/security/MessageDigest;
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 122
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 123
    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static SHA256_FOR_PACKAGE(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 111
    const-string/jumbo v2, "SHA-256"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 112
    .local v0, "md":Ljava/security/MessageDigest;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "AASAASKS"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 113
    const-string/jumbo v2, "ISO-8859-1"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    .line 114
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 115
    .local v1, "sha1hash":[B
    invoke-static {v1}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private SKA_GetDataFromXml(Ljava/util/HashMap;)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 1804
    .local p1, "store":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    const-string/jumbo v13, ""

    .line 1805
    .local v13, "path":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1806
    .local v6, "features":[Ljava/lang/String;
    const/4 v14, 0x0

    .line 1808
    .local v14, "size":I
    const-string/jumbo v13, "/data/system/.aasa/AASApolicy/ASKSC.xml"

    .line 1809
    const/4 v14, 0x2

    .line 1810
    new-array v6, v14, [Ljava/lang/String;

    .line 1811
    .local v6, "features":[Ljava/lang/String;
    const-string/jumbo v16, "CERT"

    const/16 v17, 0x0

    aput-object v16, v6, v17

    .line 1812
    const-string/jumbo v16, "NUM"

    const/16 v17, 0x1

    aput-object v16, v6, v17

    .line 1814
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1815
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_0

    .line 1816
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->mkdir()Z

    .line 1817
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v16

    const/16 v17, 0x1

    const/16 v18, 0x0

    invoke-virtual/range {v16 .. v18}, Ljava/io/File;->setReadable(ZZ)Z

    .line 1819
    :cond_0
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v16

    if-nez v16, :cond_1

    .line 1821
    return-void

    .line 1825
    :cond_1
    const/4 v8, 0x0

    .line 1827
    .local v8, "fileReader":Ljava/io/FileReader;
    :try_start_0
    new-instance v8, Ljava/io/FileReader;

    .end local v8    # "fileReader":Ljava/io/FileReader;
    invoke-direct {v8, v7}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1835
    .local v8, "fileReader":Ljava/io/FileReader;
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v12

    .line 1836
    .local v12, "parser":Lorg/xmlpull/v1/XmlPullParser;
    invoke-interface {v12, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 1838
    const-string/jumbo v10, ""

    .line 1839
    .local v10, "keyName":Ljava/lang/String;
    const/4 v15, 0x0

    .line 1840
    .local v15, "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v1, ""

    .line 1842
    .local v1, "date":Ljava/lang/String;
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v5

    .line 1843
    .end local v15    # "values":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v5, "eventType":I
    :goto_0
    const/16 v16, 0x1

    move/from16 v0, v16

    if-eq v5, v0, :cond_6

    .line 1844
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 1845
    .local v11, "name":Ljava/lang/String;
    packed-switch v5, :pswitch_data_0

    .line 1873
    :cond_2
    :goto_1
    invoke-interface {v12}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v5

    goto :goto_0

    .line 1829
    .end local v1    # "date":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v8    # "fileReader":Ljava/io/FileReader;
    .end local v10    # "keyName":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v2

    .line 1830
    .local v2, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1831
    return-void

    .line 1847
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v5    # "eventType":I
    .restart local v8    # "fileReader":Ljava/io/FileReader;
    .restart local v10    # "keyName":Ljava/lang/String;
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    const/16 v16, 0x0

    :try_start_2
    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 1848
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_3

    .line 1849
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v10

    .line 1851
    :cond_3
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1853
    :cond_4
    const/16 v16, 0x1

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    .line 1854
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_5

    .line 1855
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1858
    :cond_5
    const-string/jumbo v16, "DATE"

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1859
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    .line 1860
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v12, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    .line 1864
    :pswitch_1
    const/16 v16, 0x0

    aget-object v16, v6, v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_2

    .line 1865
    if-eqz p1, :cond_2

    .line 1867
    move-object/from16 v0, p1

    invoke-virtual {v0, v10, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_1

    .line 1877
    .end local v1    # "date":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v10    # "keyName":Ljava/lang/String;
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v4

    .line 1879
    .local v4, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_3
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    .line 1883
    :goto_2
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    .line 1884
    return-void

    .line 1875
    .end local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v1    # "date":Ljava/lang/String;
    .restart local v5    # "eventType":I
    .restart local v10    # "keyName":Ljava/lang/String;
    .restart local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :cond_6
    :try_start_4
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 1802
    return-void

    .line 1886
    .end local v1    # "date":Ljava/lang/String;
    .end local v5    # "eventType":I
    .end local v10    # "keyName":Ljava/lang/String;
    .end local v12    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .line 1888
    .local v3, "e":Ljava/io/IOException;
    :try_start_5
    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1892
    :goto_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1893
    return-void

    .line 1890
    :catch_3
    move-exception v9

    .local v9, "ioe":Ljava/io/IOException;
    goto :goto_3

    .line 1881
    .end local v3    # "e":Ljava/io/IOException;
    .end local v9    # "ioe":Ljava/io/IOException;
    .restart local v4    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :catch_4
    move-exception v9

    .restart local v9    # "ioe":Ljava/io/IOException;
    goto :goto_2

    .line 1845
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static StringToByteArray(Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .param p0, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 188
    .local v0, "buf":[B
    array-length v2, v0

    .line 189
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 190
    aget-byte v3, v0, v1

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private advancedCheckHash()Ljava/lang/String;
    .locals 29

    .prologue
    .line 837
    const/16 v20, 0x0

    .line 839
    .local v20, "md":Ljava/security/MessageDigest;
    :try_start_0
    const-string/jumbo v26, "SHA-1"

    invoke-static/range {v26 .. v26}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v20

    .line 844
    .end local v20    # "md":Ljava/security/MessageDigest;
    :goto_0
    const/16 v18, 0x0

    .line 846
    .local v18, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_1
    new-instance v19, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 847
    .end local v18    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v19, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v19, :cond_9

    .line 849
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 851
    .local v5, "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    new-instance v15, Ljava/util/LinkedHashMap;

    invoke-direct {v15}, Ljava/util/LinkedHashMap;-><init>()V

    .line 852
    .local v15, "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 853
    .local v16, "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v19 .. v19}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    .line 855
    .local v10, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    const/4 v11, 0x0

    .line 856
    .end local v16    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .local v11, "i":I
    :cond_0
    :goto_1
    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v26

    if-eqz v26, :cond_2

    .line 858
    add-int/lit8 v11, v11, 0x1

    .line 859
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/jar/JarEntry;

    .line 860
    .local v13, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v13}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v22

    .line 861
    .local v22, "name":Ljava/lang/String;
    const-string/jumbo v26, "META-INF/"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 863
    const-string/jumbo v26, "SEC-INF/"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 865
    const-string/jumbo v26, "token/"

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v26

    if-nez v26, :cond_0

    .line 867
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v13, v2}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;

    .line 868
    invoke-virtual/range {v20 .. v20}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    invoke-virtual {v15, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 869
    const v26, 0xc350

    move/from16 v0, v26

    if-lt v11, v0, :cond_0

    .line 870
    const/4 v11, 0x0

    .line 871
    invoke-virtual {v15}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedHashMap;

    .line 872
    .local v16, "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 873
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->clear()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 921
    .end local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v10    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v11    # "i":I
    .end local v13    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v15    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v16    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v22    # "name":Ljava/lang/String;
    :catch_0
    move-exception v17

    .local v17, "m":Ljava/io/IOException;
    move-object/from16 v18, v19

    .line 922
    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_2
    :try_start_3
    const-string/jumbo v26, "AASATokenParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 928
    if-eqz v18, :cond_1

    .line 929
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    .line 936
    .end local v17    # "m":Ljava/io/IOException;
    :cond_1
    :goto_3
    const/16 v26, 0x0

    return-object v26

    .line 840
    .restart local v20    # "md":Ljava/security/MessageDigest;
    :catch_1
    move-exception v9

    .line 842
    .local v9, "e1":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_0

    .line 876
    .end local v9    # "e1":Ljava/security/NoSuchAlgorithmException;
    .end local v20    # "md":Ljava/security/MessageDigest;
    .restart local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v11    # "i":I
    .restart local v15    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_2
    if-eqz v11, :cond_3

    .line 878
    :try_start_5
    invoke-virtual {v15}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/LinkedHashMap;

    .line 879
    .restart local v16    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    invoke-virtual {v15}, Ljava/util/LinkedHashMap;->clear()V

    .line 883
    .end local v16    # "local_name_list2":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_3
    if-eqz v19, :cond_4

    .line 884
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 886
    :cond_4
    const/16 v21, 0x0

    .line 888
    .local v21, "mdsha256":Ljava/security/MessageDigest;
    :try_start_6
    const-string/jumbo v26, "SHA-256"

    invoke-static/range {v26 .. v26}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_6
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-result-object v21

    .line 894
    .end local v21    # "mdsha256":Ljava/security/MessageDigest;
    :goto_4
    const/4 v12, 0x0

    .local v12, "ii":I
    :goto_5
    :try_start_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v26

    move/from16 v0, v26

    if-ge v12, v0, :cond_7

    .line 895
    new-instance v23, Ljava/util/TreeMap;

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/Map;

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 896
    .local v23, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual/range {v23 .. v23}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v24

    .line 899
    .local v24, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_6
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_6

    .line 900
    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 901
    .local v14, "key":Ljava/lang/String;
    move-object/from16 v0, v23

    invoke-virtual {v0, v14}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 904
    .local v25, "value":Ljava/lang/String;
    :try_start_8
    const-string/jumbo v26, "ISO-8859-1"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v26

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v27

    const/16 v28, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v26

    move/from16 v2, v28

    move/from16 v3, v27

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_8
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6

    .line 905
    :catch_2
    move-exception v7

    .line 907
    .local v7, "e":Ljava/io/UnsupportedEncodingException;
    :try_start_9
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_6

    .line 924
    .end local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v7    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v10    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v11    # "i":I
    .end local v12    # "ii":I
    .end local v14    # "key":Ljava/lang/String;
    .end local v15    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v23    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25    # "value":Ljava/lang/String;
    :catchall_0
    move-exception v26

    move-object/from16 v18, v19

    .line 928
    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_7
    if-eqz v18, :cond_5

    .line 929
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/util/zip/ZipFile;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 924
    :cond_5
    :goto_8
    throw v26

    .line 889
    .restart local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .restart local v10    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v11    # "i":I
    .restart local v15    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v21    # "mdsha256":Ljava/security/MessageDigest;
    :catch_3
    move-exception v8

    .line 891
    .local v8, "e":Ljava/security/NoSuchAlgorithmException;
    :try_start_b
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 894
    .end local v8    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v21    # "mdsha256":Ljava/security/MessageDigest;
    .restart local v12    # "ii":I
    .restart local v23    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .restart local v24    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 911
    .end local v23    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v24    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-virtual/range {v21 .. v21}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v26

    invoke-static/range {v26 .. v26}, Landroid/content/pm/AASATokenParser;->convertToHex([B)Ljava/lang/String;

    move-result-object v4

    .line 912
    .local v4, "HASH":Ljava/lang/String;
    const-string/jumbo v26, "AASATokenParser"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v28, " advanced hash::"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 928
    if-eqz v19, :cond_8

    .line 929
    :try_start_c
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_4

    .line 913
    :cond_8
    :goto_9
    return-object v4

    .line 931
    :catch_4
    move-exception v6

    .line 933
    .local v6, "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_9

    .line 928
    .end local v4    # "HASH":Ljava/lang/String;
    .end local v5    # "array_name_sha1":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v11    # "i":I
    .end local v12    # "ii":I
    .end local v15    # "local_name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_9
    if-eqz v19, :cond_a

    .line 929
    :try_start_d
    invoke-virtual/range {v19 .. v19}, Ljava/util/zip/ZipFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    :cond_a
    :goto_a
    move-object/from16 v18, v19

    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v18, "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_3

    .line 931
    .end local v18    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v6

    .line 933
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_a

    .line 931
    .end local v6    # "e":Ljava/io/IOException;
    .end local v19    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v17    # "m":Ljava/io/IOException;
    :catch_6
    move-exception v6

    .line 933
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_3

    .line 931
    .end local v6    # "e":Ljava/io/IOException;
    .end local v17    # "m":Ljava/io/IOException;
    :catch_7
    move-exception v6

    .line 933
    .restart local v6    # "e":Ljava/io/IOException;
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 924
    .end local v6    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v26

    goto :goto_7

    .line 921
    .local v18, "mTokenFile":Ljava/util/jar/JarFile;
    :catch_8
    move-exception v17

    .restart local v17    # "m":Ljava/io/IOException;
    goto/16 :goto_2
.end method

.method public static byteListToString(Ljava/util/List;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    if-nez p0, :cond_0

    .line 154
    const-string/jumbo v3, ""

    return-object v3

    .line 156
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 158
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "current$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    .line 160
    .local v1, "current":Ljava/lang/Byte;
    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v3

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0

    .line 163
    .end local v1    # "current":Ljava/lang/Byte;
    :cond_1
    const-string/jumbo v3, "ISO-8859-1"

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z
    .locals 4
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 236
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    .line 237
    .local v0, "eventType":I
    :goto_0
    if-eq v0, v3, :cond_1

    .line 239
    const/4 v1, 0x0

    .line 240
    .local v1, "name":Ljava/lang/String;
    packed-switch v0, :pswitch_data_0

    .line 263
    .end local v1    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    .line 243
    .restart local v1    # "name":Ljava/lang/String;
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 245
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    return v3

    .line 253
    .local v1, "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 254
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 255
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 257
    const/4 v0, 0x1

    goto :goto_1

    .line 266
    .end local v1    # "name":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    return v2

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkHash(Ljava/lang/String;)Z
    .locals 22
    .param p1, "comp"    # Ljava/lang/String;

    .prologue
    .line 942
    const/4 v11, 0x0

    .line 944
    .local v11, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v12, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-direct {v12, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 945
    .local v12, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v12, :cond_9

    .line 948
    .end local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_1
    new-instance v14, Ljava/util/LinkedHashMap;

    invoke-direct {v14}, Ljava/util/LinkedHashMap;-><init>()V

    .line 949
    .local v14, "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual {v12}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v5

    .line 950
    .local v5, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v19

    if-eqz v19, :cond_2

    .line 952
    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/jar/JarEntry;

    .line 953
    .local v7, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v7}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v13

    .line 954
    .local v13, "name":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 956
    .local v3, "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const-string/jumbo v19, "META-INF/"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 958
    const-string/jumbo v19, "token"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v19

    if-eqz v19, :cond_1

    const-string/jumbo v19, "Token.xml"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 961
    :cond_1
    invoke-static {v12, v7, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;

    .line 962
    invoke-virtual {v14, v13, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1026
    .end local v3    # "buf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v7    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "name":Ljava/lang/String;
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :catch_0
    move-exception v10

    .local v10, "m":Ljava/io/IOException;
    move-object v11, v12

    .line 1027
    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    :goto_1
    const-string/jumbo v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " ERROR: AASA_VerifyToken check hash "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    const/16 v19, 0x0

    return v19

    .line 966
    .end local v10    # "m":Ljava/io/IOException;
    .restart local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    :cond_2
    if-eqz v12, :cond_3

    .line 967
    :try_start_2
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    .line 970
    :cond_3
    new-instance v16, Ljava/util/TreeMap;

    move-object/from16 v0, v16

    invoke-direct {v0, v14}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 971
    .local v16, "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    invoke-virtual/range {v16 .. v16}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 972
    .local v17, "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 973
    .local v15, "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_4
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 974
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 975
    .local v8, "key":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 976
    .local v18, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .local v6, "iii":I
    :goto_2
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_4

    .line 977
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Byte;

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 976
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 980
    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_5
    const-string/jumbo v2, ""
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 982
    .local v2, "HASH":Ljava/lang/String;
    :try_start_3
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v2

    .line 991
    :try_start_4
    const-string/jumbo v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " ascending hash::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  comp from token:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_6

    .line 994
    const/16 v19, 0x1

    return v19

    .line 984
    :catch_1
    move-exception v4

    .line 986
    .local v4, "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " SHA1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 988
    const/16 v19, 0x0

    return v19

    .line 997
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_6
    invoke-interface {v15}, Ljava/util/List;->clear()V

    .line 998
    invoke-virtual {v14}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 999
    .local v9, "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 1000
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 1001
    .restart local v8    # "key":Ljava/lang/String;
    invoke-virtual {v14, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/util/List;

    .line 1002
    .restart local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v6, 0x0

    .restart local v6    # "iii":I
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v6, v0, :cond_7

    .line 1004
    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/lang/Byte;

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1002
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1009
    .end local v6    # "iii":I
    .end local v8    # "key":Ljava/lang/String;
    .end local v18    # "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    :cond_8
    :try_start_5
    invoke-static {v15}, Landroid/content/pm/AASATokenParser;->byteListToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/content/pm/AASATokenParser;->SHA256(Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-result-object v2

    .line 1017
    :try_start_6
    const-string/jumbo v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " insertion hash::"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string/jumbo v21, "  comp from token:"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_9

    .line 1020
    const/16 v19, 0x1

    return v19

    .line 1011
    :catch_2
    move-exception v4

    .line 1013
    .restart local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    const-string/jumbo v19, "AASATokenParser"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, " SHA1"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    .line 1015
    const/16 v19, 0x0

    return v19

    .line 1030
    .end local v2    # "HASH":Ljava/lang/String;
    .end local v4    # "e":Ljava/security/NoSuchAlgorithmException;
    .end local v5    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v9    # "listIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v14    # "name_list":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    .end local v15    # "totalBuf":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v16    # "treeMap":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/Byte;>;>;"
    .end local v17    # "treeMapIter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_9
    const/16 v19, 0x0

    return v19

    .line 1026
    .end local v12    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v11    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_3
    move-exception v10

    .restart local v10    # "m":Ljava/io/IOException;
    goto/16 :goto_1
.end method

.method private checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .param p1, "modelName"    # Ljava/lang/String;
    .param p2, "carrier"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 1900
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 1902
    :cond_0
    const-string/jumbo v7, "AASATokenParser"

    const-string/jumbo v8, "ERROR: checkTokenTarget input is null"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    return v9

    .line 1905
    :cond_1
    const-string/jumbo v7, ","

    invoke-virtual {p1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 1906
    .local v4, "rule_model":[Ljava/lang/String;
    const-string/jumbo v7, ","

    invoke-virtual {p2, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 1908
    .local v3, "rule_carrier":[Ljava/lang/String;
    const-string/jumbo v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1909
    .local v6, "target_model":Ljava/lang/String;
    const-string/jumbo v7, "ro.csc.sales_code"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1911
    .local v5, "target_carrier":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1913
    .local v2, "result":Z
    const-string/jumbo v7, "ALL"

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_e

    .line 1914
    array-length v7, v4

    if-ne v7, v10, :cond_7

    .line 1915
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 1916
    array-length v7, v3

    if-ne v7, v10, :cond_3

    .line 1917
    const/4 v2, 0x1

    .line 2008
    :cond_2
    :goto_0
    return v2

    .line 1919
    :cond_3
    const/4 v2, 0x1

    .line 1920
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_1
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 1921
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1922
    const/4 v2, 0x0

    .line 1923
    goto :goto_0

    .line 1920
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1927
    .end local v0    # "i":I
    :cond_5
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1928
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 1929
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 1930
    const/4 v2, 0x1

    .line 1931
    goto :goto_0

    .line 1928
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1936
    .end local v0    # "i":I
    :cond_7
    const/4 v2, 0x1

    .line 1939
    const/4 v0, 0x1

    .restart local v0    # "i":I
    :goto_3
    array-length v7, v4

    if-ge v0, v7, :cond_8

    .line 1940
    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 1941
    const/4 v2, 0x0

    .line 1946
    :cond_8
    if-eqz v2, :cond_2

    .line 1947
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_c

    .line 1948
    array-length v7, v3

    if-ne v7, v10, :cond_a

    .line 1949
    const/4 v2, 0x1

    goto :goto_0

    .line 1939
    :cond_9
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1951
    :cond_a
    const/4 v0, 0x1

    :goto_4
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 1952
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1953
    const/4 v2, 0x0

    .line 1954
    goto :goto_0

    .line 1951
    :cond_b
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1958
    :cond_c
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1959
    const/4 v2, 0x0

    .line 1960
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_5
    array-length v7, v3

    if-ge v1, v7, :cond_2

    .line 1961
    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 1962
    const/4 v2, 0x1

    .line 1963
    goto :goto_0

    .line 1960
    :cond_d
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 1969
    .end local v0    # "i":I
    .end local v1    # "j":I
    :cond_e
    const-string/jumbo v7, "ALL"

    aget-object v8, v4, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1972
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_6
    array-length v7, v4

    if-ge v0, v7, :cond_f

    .line 1973
    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 1974
    const/4 v2, 0x1

    .line 1979
    :cond_f
    if-eqz v2, :cond_2

    .line 1980
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 1981
    array-length v7, v3

    if-ne v7, v10, :cond_12

    .line 1982
    const/4 v2, 0x0

    .line 1983
    const/4 v0, 0x0

    :goto_7
    array-length v7, v4

    if-ge v0, v7, :cond_2

    .line 1984
    aget-object v7, v4, v0

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_11

    .line 1985
    const/4 v2, 0x1

    .line 1986
    goto/16 :goto_0

    .line 1972
    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 1983
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    .line 1990
    :cond_12
    const/4 v0, 0x1

    :goto_8
    array-length v7, v3

    if-ge v0, v7, :cond_2

    .line 1991
    aget-object v7, v3, v0

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    .line 1992
    const/4 v2, 0x0

    .line 1993
    goto/16 :goto_0

    .line 1990
    :cond_13
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    .line 1997
    :cond_14
    const-string/jumbo v7, "ALL"

    aget-object v8, v3, v9

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1998
    const/4 v2, 0x0

    .line 1999
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_9
    array-length v7, v3

    if-ge v1, v7, :cond_2

    .line 2000
    aget-object v7, v3, v1

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 2001
    const/4 v2, 0x1

    .line 2002
    goto/16 :goto_0

    .line 1999
    :cond_15
    add-int/lit8 v1, v1, 0x1

    goto :goto_9
.end method

.method private compXmlString([BIII)Ljava/lang/String;
    .locals 6
    .param p1, "xml"    # [B
    .param p2, "sitOff"    # I
    .param p3, "stOff"    # I
    .param p4, "strInd"    # I

    .prologue
    .line 716
    if-gez p4, :cond_0

    const/4 v4, 0x0

    return-object v4

    .line 717
    :cond_0
    mul-int/lit8 v4, p4, 0x4

    add-int/2addr v4, p2

    invoke-direct {p0, p1, v4}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v4

    add-int v3, p3, v4

    .line 718
    .local v3, "strOff":I
    add-int/lit8 v4, v3, 0x1

    aget-byte v4, p1, v4

    shl-int/lit8 v4, v4, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    aget-byte v5, p1, v3

    and-int/lit16 v5, v5, 0xff

    or-int v2, v4, v5

    .line 719
    .local v2, "strLen":I
    new-array v0, v2, [B

    .line 720
    .local v0, "chars":[B
    const/4 v1, 0x0

    .local v1, "ii":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 722
    add-int/lit8 v4, v3, 0x2

    mul-int/lit8 v5, v1, 0x2

    add-int/2addr v4, v5

    aget-byte v4, p1, v4

    aput-byte v4, v0, v1

    .line 720
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 724
    :cond_1
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    return-object v4
.end method

.method private static convertToHex([B)Ljava/lang/String;
    .locals 8
    .param p0, "data"    # [B

    .prologue
    const/4 v5, 0x0

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 136
    .local v1, "buf":Ljava/lang/StringBuilder;
    array-length v7, p0

    move v6, v5

    :goto_0
    if-ge v6, v7, :cond_2

    aget-byte v0, p0, v6

    .line 138
    .local v0, "b":B
    ushr-int/lit8 v5, v0, 0x4

    and-int/lit8 v2, v5, 0xf

    .line 139
    .local v2, "halfbyte":I
    const/4 v3, 0x0

    .local v3, "two_halfs":I
    move v4, v3

    .line 142
    .end local v3    # "two_halfs":I
    .local v4, "two_halfs":I
    :goto_1
    if-ltz v2, :cond_0

    const/16 v5, 0x9

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, v2, 0x30

    int-to-char v5, v5

    :goto_2
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 143
    and-int/lit8 v2, v0, 0xf

    .line 145
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    move v4, v3

    .end local v3    # "two_halfs":I
    .restart local v4    # "two_halfs":I
    goto :goto_1

    .line 142
    :cond_0
    add-int/lit8 v5, v2, -0xa

    add-int/lit8 v5, v5, 0x61

    int-to-char v5, v5

    goto :goto_2

    .line 136
    .end local v4    # "two_halfs":I
    .restart local v3    # "two_halfs":I
    :cond_1
    add-int/lit8 v5, v6, 0x1

    move v6, v5

    goto :goto_0

    .line 147
    .end local v0    # "b":B
    .end local v2    # "halfbyte":I
    .end local v3    # "two_halfs":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static isInteger(Ljava/lang/String;)Z
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 99
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const/4 v1, 0x1

    return v1

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v1, 0x0

    return v1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/security/MessageDigest;)[Ljava/security/cert/Certificate;
    .locals 10
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "md"    # Ljava/security/MessageDigest;

    .prologue
    const/4 v6, 0x0

    .line 197
    const/4 v3, 0x0

    .line 199
    .local v3, "is":Ljava/io/InputStream;
    if-nez p2, :cond_0

    return-object v6

    .line 201
    :cond_0
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 202
    .local v3, "is":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 203
    .local v5, "size":I
    const/16 v7, 0x1000

    new-array v4, v7, [B

    .line 204
    .local v4, "localBuf":[B
    if-eqz v3, :cond_3

    .line 205
    :goto_0
    const/4 v7, 0x0

    const/16 v8, 0x1000

    invoke-virtual {v3, v4, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    .line 206
    const/4 v7, 0x0

    invoke-virtual {p3, v4, v7, v5}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 213
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "localBuf":[B
    .end local v5    # "size":I
    :catch_0
    move-exception v0

    .line 214
    .local v0, "e":Ljava/io/IOException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TinyAASA + No IO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 215
    if-eqz v3, :cond_1

    .line 217
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 231
    .end local v0    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v6

    .line 208
    .restart local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "localBuf":[B
    .restart local v5    # "size":I
    :cond_2
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 211
    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v6

    :cond_4
    return-object v6

    .line 222
    .end local v3    # "is":Ljava/io/InputStream;
    .end local v4    # "localBuf":[B
    .end local v5    # "size":I
    :catch_1
    move-exception v1

    .line 223
    .local v1, "e":Ljava/lang/RuntimeException;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "TinyAASA + No RUN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 224
    if-eqz v3, :cond_1

    .line 226
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 227
    :catch_2
    move-exception v2

    .local v2, "eee":Ljava/io/IOException;
    goto :goto_1

    .line 218
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "eee":Ljava/io/IOException;
    .restart local v0    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v2

    .restart local v2    # "eee":Ljava/io/IOException;
    goto :goto_1
.end method

.method private static loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;Ljava/util/List;)[Ljava/security/cert/Certificate;
    .locals 11
    .param p0, "jarFile"    # Ljava/util/jar/JarFile;
    .param p1, "je"    # Ljava/util/jar/JarEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/jar/JarFile;",
            "Ljava/util/jar/JarEntry;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Byte;",
            ">;)[",
            "Ljava/security/cert/Certificate;"
        }
    .end annotation

    .prologue
    .local p2, "readBuffer":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    const/4 v10, 0x0

    .line 272
    const/4 v4, 0x0

    .line 274
    .local v4, "is":Ljava/io/InputStream;
    if-eqz p1, :cond_3

    .line 275
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v4

    .line 276
    .local v4, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 277
    .local v6, "size":I
    const/16 v7, 0x400

    new-array v5, v7, [B

    .line 278
    .local v5, "localBuf":[B
    if-eqz v4, :cond_2

    .line 279
    :cond_0
    const/4 v7, 0x0

    const/16 v8, 0x400

    invoke-virtual {v4, v5, v7, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 280
    const/4 v3, 0x0

    .local v3, "ii":I
    :goto_0
    if-ge v3, v6, :cond_0

    .line 281
    aget-byte v7, v5, v3

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    invoke-interface {p2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 283
    .end local v3    # "ii":I
    :cond_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 285
    :cond_2
    invoke-virtual {p1}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 297
    .end local v4    # "is":Ljava/io/InputStream;
    .end local v5    # "localBuf":[B
    .end local v6    # "size":I
    :catch_0
    move-exception v1

    .line 298
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No RUN "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    if-eqz v4, :cond_3

    .line 301
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 306
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_3
    :goto_1
    return-object v10

    .line 302
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .local v2, "eee":Ljava/io/IOException;
    goto :goto_1

    .line 288
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "eee":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 289
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No IO "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    if-eqz v4, :cond_3

    .line 292
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 293
    :catch_3
    move-exception v2

    .restart local v2    # "eee":Ljava/io/IOException;
    goto :goto_1
.end method

.method private loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;
    .locals 8
    .param p1, "jarFile"    # Ljava/util/jar/JarFile;
    .param p2, "je"    # Ljava/util/jar/JarEntry;
    .param p3, "readBuffer"    # [B

    .prologue
    const/4 v7, 0x0

    .line 311
    const/4 v3, 0x0

    .line 313
    .local v3, "is":Ljava/io/InputStream;
    if-eqz p2, :cond_2

    .line 314
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v3

    .line 315
    .local v3, "is":Ljava/io/InputStream;
    if-eqz v3, :cond_1

    .line 316
    :cond_0
    array-length v4, p3

    const/4 v5, 0x0

    invoke-virtual {v3, p3, v5, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 318
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 320
    :cond_1
    invoke-virtual {p2}, Ljava/util/jar/JarEntry;->getCertificates()[Ljava/security/cert/Certificate;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 332
    .end local v3    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 333
    .local v1, "e":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No RUN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    if-eqz v3, :cond_2

    .line 336
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 341
    .end local v1    # "e":Ljava/lang/RuntimeException;
    :cond_2
    :goto_0
    return-object v7

    .line 337
    .restart local v1    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v2

    .local v2, "eee":Ljava/io/IOException;
    goto :goto_0

    .line 323
    .end local v1    # "e":Ljava/lang/RuntimeException;
    .end local v2    # "eee":Ljava/io/IOException;
    :catch_2
    move-exception v0

    .line 324
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "AASATokenParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No IO "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    if-eqz v3, :cond_2

    .line 327
    :try_start_2
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_0

    .line 328
    :catch_3
    move-exception v2

    .restart local v2    # "eee":Ljava/io/IOException;
    goto :goto_0
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 7
    .param p1, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .param p2, "target"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .local p3, "arrayValue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 346
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v2

    .line 347
    .local v2, "eventType":I
    const/4 v1, 0x0

    .line 348
    .local v1, "depth":I
    :goto_0
    if-eq v2, v5, :cond_1

    .line 350
    const/4 v3, 0x0

    .line 351
    .local v3, "name":Ljava/lang/String;
    packed-switch v2, :pswitch_data_0

    .line 378
    .end local v3    # "name":Ljava/lang/String;
    :cond_0
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    goto :goto_0

    .line 354
    .restart local v3    # "name":Ljava/lang/String;
    :pswitch_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 355
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 356
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 358
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    .line 359
    const/4 v0, 0x0

    .local v0, "a":I
    :goto_2
    if-ge v0, v1, :cond_0

    .line 361
    invoke-interface {p1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 359
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 368
    .end local v0    # "a":I
    .local v3, "name":Ljava/lang/String;
    :pswitch_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 370
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 372
    const/4 v2, 0x1

    goto :goto_1

    .line 381
    .end local v3    # "name":Ljava/lang/String;
    :cond_1
    if-nez v1, :cond_2

    :goto_3
    return v4

    :cond_2
    move v4, v5

    goto :goto_3

    .line 351
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static toChars([B)[C
    .locals 10
    .param p0, "mSignature"    # [B

    .prologue
    const/16 v9, 0xa

    .line 168
    move-object v4, p0

    .line 169
    .local v4, "sig":[B
    array-length v0, p0

    .line 170
    .local v0, "N":I
    mul-int/lit8 v1, v0, 0x2

    .line 171
    .local v1, "N2":I
    new-array v5, v1, [C

    .line 173
    .local v5, "text":[C
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 175
    aget-byte v6, p0, v3

    .line 176
    .local v6, "v":B
    shr-int/lit8 v7, v6, 0x4

    and-int/lit8 v2, v7, 0xf

    .line 177
    .local v2, "d":I
    mul-int/lit8 v8, v3, 0x2

    if-lt v2, v9, :cond_0

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_1
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 178
    and-int/lit8 v2, v6, 0xf

    .line 179
    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v8, v7, 0x1

    if-lt v2, v9, :cond_1

    add-int/lit8 v7, v2, 0x61

    add-int/lit8 v7, v7, -0xa

    :goto_2
    int-to-char v7, v7

    aput-char v7, v5, v8

    .line 173
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_0
    add-int/lit8 v7, v2, 0x30

    goto :goto_1

    .line 179
    :cond_1
    add-int/lit8 v7, v2, 0x30

    goto :goto_2

    .line 182
    .end local v2    # "d":I
    .end local v6    # "v":B
    :cond_2
    return-object v5
.end method

.method private writeBlockApkList(Ljava/lang/String;)V
    .locals 7
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 2013
    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string/jumbo v4, "/data/system/.aasa/blockedList.log"

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2014
    .local v1, "fname":Ljava/io/File;
    new-instance v2, Ljava/io/FileOutputStream;

    const/4 v4, 0x1

    invoke-direct {v2, v1, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 2015
    .local v2, "out":Ljava/io/FileOutputStream;
    new-instance v3, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v3, v2}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 2016
    .local v3, "pw":Ljava/io/PrintWriter;
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2017
    invoke-virtual {v3}, Lcom/android/internal/util/FastPrintWriter;->close()V

    .line 2018
    const-string/jumbo v4, "AASAASKS"

    const-string/jumbo v5, "writeBlockApkList() Success"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    .end local v1    # "fname":Ljava/io/File;
    .end local v2    # "out":Ljava/io/FileOutputStream;
    .end local v3    # "pw":Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 2019
    :catch_0
    move-exception v0

    .line 2020
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v4, "AASAASKS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeBlockApkList() Fail "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public AASA_IsSKAToken(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 729
    const/4 v6, 0x0

    .line 730
    .local v6, "ret":Z
    const/4 v3, 0x0

    .line 733
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 734
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    .line 736
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 737
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 739
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 740
    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 741
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const-string/jumbo v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 743
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 744
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 745
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "SEC-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "buildConfirm.crt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 746
    const/4 v6, 0x1

    .line 767
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    :goto_0
    if-eqz v4, :cond_2

    .line 768
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    :cond_2
    move-object v3, v4

    .line 771
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_3
    :goto_1
    if-eqz v6, :cond_4

    .line 772
    const/4 v7, 0x1

    iput-boolean v7, p0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    .line 774
    :cond_4
    return v6

    .line 748
    .restart local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v5    # "name":Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string/jumbo v7, "META-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "SEC-INF"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "buildinfo"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 750
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 751
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    .line 752
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "META-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "SEC-INF"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "buildConfirm.crt"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 753
    const/4 v6, 0x1

    .line 754
    goto :goto_0

    .line 762
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v5    # "name":Ljava/lang/String;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v2

    .line 763
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v2, "m":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " ERROR: AASA_SKAIsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 767
    if-eqz v3, :cond_3

    .line 768
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_1

    .line 766
    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 767
    :goto_3
    if-eqz v3, :cond_6

    .line 768
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 766
    :cond_6
    throw v7

    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_3

    .line 762
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    .restart local v2    # "m":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_2
.end method

.method public AASA_IsToken(Ljava/lang/String;)Z
    .locals 10
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 795
    const/4 v6, 0x0

    .line 796
    .local v6, "ret":Z
    const/4 v3, 0x0

    .line 799
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    :try_start_0
    new-instance v4, Ljava/util/jar/JarFile;

    invoke-direct {v4, p1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 800
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v4, "mTokenFile":Ljava/util/jar/JarFile;
    if-eqz v4, :cond_1

    .line 802
    :try_start_1
    invoke-virtual {v4}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v0

    .line 803
    .local v0, "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 805
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/jar/JarEntry;

    .line 806
    .local v1, "jarEntry":Ljava/util/jar/JarEntry;
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v5

    .line 807
    .local v5, "name":Ljava/lang/String;
    const-string/jumbo v7, "token"

    invoke-virtual {v5, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    const-string/jumbo v7, "Token.xml"

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 810
    const-string/jumbo v7, ""

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    .line 811
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 812
    iput-object v5, p0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 813
    const/4 v6, 0x1

    .line 826
    .end local v0    # "entries":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v1    # "jarEntry":Ljava/util/jar/JarEntry;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    if-eqz v4, :cond_2

    .line 827
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V

    :cond_2
    move-object v3, v4

    .line 830
    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_3
    :goto_0
    return v6

    .line 821
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v2

    .line 822
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v2, "m":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, " ERROR: AASA_IsToken "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 826
    if-eqz v3, :cond_3

    .line 827
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_0

    .line 825
    .end local v2    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 826
    :goto_2
    if-eqz v3, :cond_4

    .line 827
    invoke-virtual {v3}, Ljava/util/zip/ZipFile;->close()V

    .line 825
    :cond_4
    throw v7

    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v7

    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v3, "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_2

    .line 821
    .end local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_1
    move-exception v2

    .restart local v2    # "m":Ljava/io/IOException;
    move-object v3, v4

    .end local v4    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v3    # "mTokenFile":Ljava/util/jar/JarFile;
    goto :goto_1
.end method

.method public AASA_VerifyFile([B)[B
    .locals 2
    .param p1, "contents"    # [B

    .prologue
    const/4 v1, 0x0

    .line 1035
    invoke-virtual {p0, p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v0

    .line 1036
    .local v0, "mj":[B
    if-eqz v0, :cond_0

    .line 1037
    return-object v0

    .line 1040
    :cond_0
    return-object v1
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1200
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/content/pm/AASATokenParser;->AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result v0

    return v0
.end method

.method public AASA_VerifyToken(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .locals 38
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uuid"    # Ljava/lang/String;
    .param p3, "allowInstall"    # Z
    .param p4, "aasaFirstWoring"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1206
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " AASA_VerifyToken START"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    move/from16 v19, v0

    .line 1210
    .local v19, "mIsSKA":Z
    const/16 v35, 0x0

    move/from16 v0, v35

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsCalledBySKA:Z

    .line 1211
    const/16 v18, 0x0

    .line 1213
    .local v18, "mIsBlockDeploy":Z
    const/16 v21, 0x0

    .line 1214
    .local v21, "mTokenFile":Ljava/util/jar/JarFile;
    const/16 v20, 0x0

    .line 1215
    .local v20, "mTokenEntry":Ljava/util/jar/JarEntry;
    const/4 v4, 0x0

    .line 1218
    .local v4, "certs":[Ljava/security/cert/Certificate;
    :try_start_0
    new-instance v22, Ljava/util/jar/JarFile;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1219
    .end local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v22, "mTokenFile":Ljava/util/jar/JarFile;
    if-nez p3, :cond_0

    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v35, v0

    const-string/jumbo v36, "/data/"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_0

    .line 1220
    const/16 v18, 0x1

    .line 1222
    :cond_0
    if-eqz v22, :cond_1

    .line 1224
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v35, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v20

    .line 1225
    .local v20, "mTokenEntry":Ljava/util/jar/JarEntry;
    if-eqz v20, :cond_1

    .line 1227
    invoke-virtual/range {v20 .. v20}, Ljava/util/zip/ZipEntry;->getSize()J

    move-result-wide v36

    move-wide/from16 v0, v36

    long-to-int v0, v0

    move/from16 v35, v0

    move/from16 v0, v35

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 1228
    .local v29, "signedData":[B
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v20

    move-object/from16 v3, v29

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->loadCertificates(Ljava/util/jar/JarFile;Ljava/util/jar/JarEntry;[B)[Ljava/security/cert/Certificate;

    move-result-object v4

    .line 1229
    .local v4, "certs":[Ljava/security/cert/Certificate;
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v35

    move-object/from16 v0, v35

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1240
    .end local v4    # "certs":[Ljava/security/cert/Certificate;
    .end local v20    # "mTokenEntry":Ljava/util/jar/JarEntry;
    .end local v29    # "signedData":[B
    :cond_1
    if-eqz v22, :cond_2

    .line 1241
    invoke-virtual/range {v22 .. v22}, Ljava/util/zip/ZipFile;->close()V

    :cond_2
    move-object/from16 v21, v22

    .line 1247
    .end local v22    # "mTokenFile":Ljava/util/jar/JarFile;
    :cond_3
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v35, v0

    if-eqz v35, :cond_4

    if-nez v4, :cond_6

    .line 1249
    :cond_4
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " ERROR: plz check certification in the device"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    const/16 v35, 0x0

    return v35

    .line 1235
    .local v4, "certs":[Ljava/security/cert/Certificate;
    .local v20, "mTokenEntry":Ljava/util/jar/JarEntry;
    .restart local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_0
    move-exception v17

    .line 1236
    .end local v4    # "certs":[Ljava/security/cert/Certificate;
    .end local v20    # "mTokenEntry":Ljava/util/jar/JarEntry;
    .end local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v17, "m":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " ERROR: AASA_VerifyToken "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1240
    if-eqz v21, :cond_3

    .line 1241
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipFile;->close()V

    goto :goto_0

    .line 1239
    .end local v17    # "m":Ljava/io/IOException;
    :catchall_0
    move-exception v35

    .line 1240
    :goto_2
    if-eqz v21, :cond_5

    .line 1241
    invoke-virtual/range {v21 .. v21}, Ljava/util/zip/ZipFile;->close()V

    .line 1239
    :cond_5
    throw v35

    .line 1253
    :cond_6
    const/16 v21, 0x0

    .line 1254
    .restart local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    const/16 v20, 0x0

    .line 1258
    .restart local v20    # "mTokenEntry":Ljava/util/jar/JarEntry;
    :try_start_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1259
    .local v28, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1260
    .local v27, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1261
    new-instance v33, Ljava/util/ArrayList;

    invoke-direct/range {v33 .. v33}, Ljava/util/ArrayList;-><init>()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    .line 1264
    .local v33, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_4
    const-string/jumbo v35, "MODE"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v35

    if-eqz v35, :cond_7

    .line 1266
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1267
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1268
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1274
    const/16 v35, 0x0

    move-object/from16 v0, v33

    move/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    .line 1275
    .local v23, "mode":Ljava/lang/String;
    invoke-static/range {v23 .. v23}, Landroid/content/pm/AASATokenParser;->isInteger(Ljava/lang/String;)Z

    move-result v35

    if-nez v35, :cond_8

    .line 1277
    const/16 v35, 0x0

    return v35

    .line 1271
    .end local v23    # "mode":Ljava/lang/String;
    :cond_7
    const/16 v35, 0x0

    return v35

    .line 1279
    .restart local v23    # "mode":Ljava/lang/String;
    :cond_8
    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v34

    .line 1281
    .local v34, "which":I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v35, v0

    if-eqz v35, :cond_9

    .line 1283
    const/16 v35, 0xff

    move/from16 v0, v34

    move/from16 v1, v35

    if-ne v0, v1, :cond_9

    .line 1284
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " Ship mode device does not support MODE 255"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    const/16 v35, 0x0

    return v35

    .line 1288
    :cond_9
    const/4 v12, 0x0

    .line 1289
    .local v12, "isCheckUID":Z
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1290
    .local v6, "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    sparse-switch v34, :sswitch_data_0

    .line 1430
    const/16 v35, 0x0

    return v35

    .line 1295
    :sswitch_0
    if-eqz v19, :cond_e

    .line 1296
    if-eqz v18, :cond_b

    .line 1297
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "Violate security policy of MSTG. Package("

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string/jumbo v37, ") is blocked. "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1298
    if-eqz p4, :cond_a

    .line 1299
    invoke-direct/range {p0 .. p1}, Landroid/content/pm/AASATokenParser;->writeBlockApkList(Ljava/lang/String;)V

    .line 1301
    :cond_a
    const/16 v35, 0x0

    return v35

    .line 1303
    :cond_b
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " Token 0:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1306
    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_d

    .line 1307
    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1311
    :goto_3
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1312
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1313
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1433
    :cond_c
    :goto_4
    :sswitch_1
    invoke-virtual/range {v33 .. v33}, Ljava/util/ArrayList;->clear()V

    .line 1434
    const/4 v11, 0x0

    .local v11, "ii":I
    :goto_5
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_1a

    .line 1436
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    move-object/from16 v3, v33

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v35

    if-eqz v35, :cond_19

    .line 1438
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1439
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1440
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1434
    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    .line 1309
    .end local v11    # "ii":I
    :cond_d
    const-string/jumbo v35, "DIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 1666
    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "isCheckUID":Z
    .end local v23    # "mode":Ljava/lang/String;
    .end local v34    # "which":I
    :catch_1
    move-exception v8

    .line 1668
    .local v8, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v8}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1670
    const/16 v35, 0x0

    return v35

    .line 1317
    .end local v8    # "e":Ljava/io/IOException;
    .restart local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "isCheckUID":Z
    .restart local v23    # "mode":Ljava/lang/String;
    .restart local v34    # "which":I
    :cond_e
    :try_start_6
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1318
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1319
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v35, v0

    if-nez v35, :cond_f

    .line 1320
    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_10

    .line 1321
    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1325
    :goto_6
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1326
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1327
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1329
    :cond_f
    const-string/jumbo v35, "MODELS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1330
    const-string/jumbo v35, "CARRIERS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_4

    .line 1675
    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v12    # "isCheckUID":Z
    .end local v23    # "mode":Ljava/lang/String;
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v33    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34    # "which":I
    :catch_2
    move-exception v9

    .line 1676
    .local v9, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    const/16 v35, 0x0

    return v35

    .line 1323
    .end local v9    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v12    # "isCheckUID":Z
    .restart local v23    # "mode":Ljava/lang/String;
    .restart local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v28    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v33    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v34    # "which":I
    :cond_10
    :try_start_7
    const-string/jumbo v35, "DIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1335
    :sswitch_2
    if-eqz v19, :cond_15

    .line 1336
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    const-string/jumbo v35, "DIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1338
    const-string/jumbo v35, "CREATE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1339
    const-string/jumbo v35, "VERSION"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1340
    const-string/jumbo v35, "INDEX"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    const-string/jumbo v35, "MODELS"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_11

    .line 1344
    const-string/jumbo v35, "MODELS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1346
    :cond_11
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1347
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1348
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1349
    const-string/jumbo v35, "CARRIERS"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_12

    .line 1350
    const-string/jumbo v35, "CARRIERS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1352
    :cond_12
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1353
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1354
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1355
    const-string/jumbo v35, "EXPIRED"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_13

    .line 1356
    const-string/jumbo v35, "EXPIRED"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1358
    :cond_13
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1359
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1360
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1361
    const-string/jumbo v35, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_14

    .line 1362
    const-string/jumbo v35, "SERIALNUMBER"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1364
    :cond_14
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1365
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1366
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1371
    :cond_15
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1372
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1373
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v35, v0

    if-nez v35, :cond_c

    .line 1375
    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkExistTAG(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_16

    .line 1376
    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1377
    const-string/jumbo v35, "MODELS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1378
    const-string/jumbo v35, "CARRIERS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1380
    :cond_16
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1381
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1382
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_4

    .line 1389
    :sswitch_3
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1392
    :sswitch_4
    const-string/jumbo v35, "UUID"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1396
    :sswitch_5
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1400
    :sswitch_6
    const-string/jumbo v35, "UUID"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1401
    const-string/jumbo v35, "ACCOUNT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1404
    :sswitch_7
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1405
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1408
    :sswitch_8
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1409
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v35, v0

    if-nez v35, :cond_17

    const-string/jumbo v35, "DIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1411
    :cond_17
    const-string/jumbo v35, "MODELS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1412
    const-string/jumbo v35, "CARRIERS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    const/4 v12, 0x1

    .line 1414
    goto/16 :goto_4

    .line 1416
    :sswitch_9
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1417
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1420
    :sswitch_a
    const-string/jumbo v35, "PACKAGE"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    const-string/jumbo v35, "CERT"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1422
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    move/from16 v35, v0

    if-nez v35, :cond_18

    const-string/jumbo v35, "ADVANCEDDIGEST"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1423
    :cond_18
    const-string/jumbo v35, "MODELS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1424
    const-string/jumbo v35, "CARRIERS"

    move-object/from16 v0, v35

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_4

    .line 1444
    .restart local v11    # "ii":I
    :cond_19
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " Token does not have value"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    const/16 v35, 0x0

    return v35

    .line 1450
    :cond_1a
    const/16 v30, 0x0

    .line 1451
    .local v30, "success_check_count":I
    const/4 v13, 0x0

    .line 1453
    .local v13, "isModelChecked":Z
    const/4 v14, 0x0

    .line 1454
    .local v14, "isValidDate":Z
    const/4 v7, 0x0

    .line 1455
    .local v7, "createDate":Ljava/lang/String;
    const/4 v10, 0x0

    .line 1456
    .local v10, "expiredDate":Ljava/lang/String;
    const/16 v16, 0x0

    .line 1458
    .local v16, "keyValue":Ljava/lang/String;
    const/16 v25, 0x0

    .line 1459
    .local v25, "mymodel":Ljava/lang/String;
    const/16 v24, 0x0

    .line 1460
    .local v24, "mycarrier":Ljava/lang/String;
    const/4 v11, 0x0

    .end local v7    # "createDate":Ljava/lang/String;
    .end local v10    # "expiredDate":Ljava/lang/String;
    .end local v16    # "keyValue":Ljava/lang/String;
    .end local v24    # "mycarrier":Ljava/lang/String;
    .end local v25    # "mymodel":Ljava/lang/String;
    :goto_7
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    if-ge v11, v0, :cond_34

    .line 1462
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "PACKAGE"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1c

    .line 1464
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1466
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "OK:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1467
    add-int/lit8 v30, v30, 0x1

    .line 1460
    :cond_1b
    :goto_8
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    .line 1471
    :cond_1c
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "CERT"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1e

    .line 1473
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_9
    array-length v0, v4

    move/from16 v35, v0

    move/from16 v0, v35

    if-ge v15, v0, :cond_1b

    .line 1475
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    new-instance v36, Ljava/lang/String;

    aget-object v37, v4, v15

    invoke-virtual/range {v37 .. v37}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v37

    invoke-interface/range {v37 .. v37}, Ljava/security/PublicKey;->getEncoded()[B

    move-result-object v37

    invoke-static/range {v37 .. v37}, Landroid/content/pm/AASATokenParser;->toChars([B)[C

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/String;-><init>([C)V

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1d

    .line 1477
    add-int/lit8 v30, v30, 0x1

    .line 1478
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "OK:CERT"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    :cond_1d
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 1483
    .end local v15    # "j":I
    :cond_1e
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "UUID"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1f

    .line 1485
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "OK:UUID"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1486
    if-eqz p2, :cond_1b

    .line 1488
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v35

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1490
    add-int/lit8 v30, v30, 0x1

    goto :goto_8

    .line 1494
    :cond_1f
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "ACCOUNT"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_20

    .line 1496
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "OK:ACCOUNT"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1497
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1499
    :cond_20
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "DIGEST"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_23

    .line 1502
    if-eqz v19, :cond_22

    .line 1503
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    .line 1504
    .local v5, "checkHash":Ljava/lang/String;
    if-eqz v5, :cond_21

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_21

    .line 1506
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "OK:AdvancedHASH"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1507
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1509
    :cond_21
    const-string/jumbo v36, "AASATokenParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "NOT OK:AdvancedHASH : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v37, " comp : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1512
    .end local v5    # "checkHash":Ljava/lang/String;
    :cond_22
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v35

    invoke-direct {v0, v1}, Landroid/content/pm/AASATokenParser;->checkHash(Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1514
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "OK:HASH"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1515
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1518
    :cond_23
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "ADVANCEDDIGEST"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_25

    .line 1520
    invoke-direct/range {p0 .. p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v5

    .line 1521
    .restart local v5    # "checkHash":Ljava/lang/String;
    if-eqz v5, :cond_24

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_24

    .line 1523
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "OK:AdvancedHASH"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1526
    :cond_24
    const-string/jumbo v36, "AASATokenParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "NOT OK:AdvancedHASH : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    move-object/from16 v0, v35

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    const-string/jumbo v37, " comp : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_8

    .line 1529
    .end local v5    # "checkHash":Ljava/lang/String;
    :cond_25
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "MODELS"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_27

    .line 1531
    if-nez v13, :cond_26

    .line 1533
    const/4 v13, 0x1

    .line 1534
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .local v25, "mymodel":Ljava/lang/String;
    goto/16 :goto_8

    .line 1537
    .end local v25    # "mymodel":Ljava/lang/String;
    :cond_26
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/lang/String;

    .line 1538
    .restart local v25    # "mymodel":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1540
    add-int/lit8 v30, v30, 0x1

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1544
    .end local v25    # "mymodel":Ljava/lang/String;
    :cond_27
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "CARRIERS"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_29

    .line 1546
    if-eqz v13, :cond_28

    .line 1547
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .line 1548
    .local v24, "mycarrier":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v24

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->checkTokentarget(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1550
    add-int/lit8 v30, v30, 0x1

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1555
    .end local v24    # "mycarrier":Ljava/lang/String;
    :cond_28
    const/4 v13, 0x1

    .line 1556
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    .restart local v24    # "mycarrier":Ljava/lang/String;
    goto/16 :goto_8

    .line 1559
    .end local v24    # "mycarrier":Ljava/lang/String;
    :cond_29
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "CREATE"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_2d

    .line 1561
    const-string/jumbo v36, "AASATokenParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "CREATE : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_7 .. :try_end_7} :catch_2

    .line 1562
    if-eqz v14, :cond_2c

    .line 1564
    :try_start_8
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Ljava/lang/String;

    move-object v7, v0

    .line 1565
    .local v7, "createDate":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2a

    .line 1566
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "createDate is bigger than expiredDate."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    const/16 v35, 0x0

    return v35

    .line 1569
    :cond_2a
    new-instance v35, Ljava/text/SimpleDateFormat;

    const-string/jumbo v36, "yyyyMMdd"

    invoke-direct/range {v35 .. v36}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v36, Ljava/util/Date;

    invoke-direct/range {v36 .. v36}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v35 .. v36}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    .line 1570
    .local v31, "today":Ljava/lang/Integer;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2b

    .line 1571
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "today Date is bigger than expiredDate."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_2

    .line 1572
    const/16 v35, 0x0

    return v35

    .line 1574
    :cond_2b
    add-int/lit8 v30, v30, 0x1

    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1575
    .end local v7    # "createDate":Ljava/lang/String;
    .end local v31    # "today":Ljava/lang/Integer;
    :catch_3
    move-exception v26

    .line 1576
    .local v26, "ne":Ljava/lang/NumberFormatException;
    :try_start_9
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "CREATE : NumberFormatException"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    const/16 v35, 0x0

    return v35

    .line 1580
    .end local v26    # "ne":Ljava/lang/NumberFormatException;
    :cond_2c
    const/4 v14, 0x1

    .line 1581
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1582
    .restart local v7    # "createDate":Ljava/lang/String;
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1586
    .end local v7    # "createDate":Ljava/lang/String;
    :cond_2d
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "EXPIRED"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_31

    .line 1588
    const-string/jumbo v36, "AASATokenParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "EXPIRED : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_9 .. :try_end_9} :catch_2

    .line 1589
    if-eqz v14, :cond_30

    .line 1591
    :try_start_a
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v0, v35

    check-cast v0, Ljava/lang/String;

    move-object v10, v0

    .line 1592
    .local v10, "expiredDate":Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v35

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2e

    .line 1593
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "createDate is bigger than expiredDate."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    const/16 v35, 0x0

    return v35

    .line 1596
    :cond_2e
    new-instance v35, Ljava/text/SimpleDateFormat;

    const-string/jumbo v36, "yyyyMMdd"

    invoke-direct/range {v35 .. v36}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v36, Ljava/util/Date;

    invoke-direct/range {v36 .. v36}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v35 .. v36}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v35

    invoke-static/range {v35 .. v35}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v31

    .line 1597
    .restart local v31    # "today":Ljava/lang/Integer;
    invoke-virtual/range {v31 .. v31}, Ljava/lang/Integer;->intValue()I

    move-result v35

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v36

    move/from16 v0, v35

    move/from16 v1, v36

    if-le v0, v1, :cond_2f

    .line 1598
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "today Date is bigger than expiredDate."

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_2

    .line 1599
    const/16 v35, 0x0

    return v35

    .line 1601
    :cond_2f
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1603
    .end local v10    # "expiredDate":Ljava/lang/String;
    .end local v31    # "today":Ljava/lang/Integer;
    :catch_4
    move-exception v26

    .line 1604
    .restart local v26    # "ne":Ljava/lang/NumberFormatException;
    :try_start_b
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, "EXPIRED : NumberFormatException"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1605
    const/16 v35, 0x0

    return v35

    .line 1608
    .end local v26    # "ne":Ljava/lang/NumberFormatException;
    :cond_30
    const/4 v14, 0x1

    .line 1609
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .restart local v10    # "expiredDate":Ljava/lang/String;
    goto/16 :goto_8

    .line 1612
    .end local v10    # "expiredDate":Ljava/lang/String;
    :cond_31
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "VERSION"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_32

    .line 1614
    const-string/jumbo v36, "AASATokenParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "VERSION : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1618
    :cond_32
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "INDEX"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_33

    .line 1620
    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1621
    .local v16, "keyValue":Ljava/lang/String;
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "INDEX : "

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1623
    .end local v16    # "keyValue":Ljava/lang/String;
    :cond_33
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    const-string/jumbo v36, "SERIALNUMBER"

    invoke-virtual/range {v35 .. v36}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_1b

    .line 1625
    const-string/jumbo v36, "AASATokenParser"

    new-instance v35, Ljava/lang/StringBuilder;

    invoke-direct/range {v35 .. v35}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, "SERIALNUMBER : "

    move-object/from16 v0, v35

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Ljava/lang/String;

    move-object/from16 v0, v37

    move-object/from16 v1, v35

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v35

    invoke-virtual/range {v35 .. v35}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v35

    move-object/from16 v0, v36

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1626
    const/4 v12, 0x1

    .line 1627
    add-int/lit8 v30, v30, 0x1

    goto/16 :goto_8

    .line 1632
    :cond_34
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v35

    move/from16 v0, v35

    move/from16 v1, v30

    if-ne v0, v1, :cond_39

    .line 1633
    if-nez v12, :cond_35

    .line 1634
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " Pass ALL"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const/16 v35, 0x1

    return v35

    .line 1638
    :cond_35
    new-instance v32, Ljava/util/ArrayList;

    invoke-direct/range {v32 .. v32}, Ljava/util/ArrayList;-><init>()V

    .line 1639
    .local v32, "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v35, "SERIALNUMBER"

    move-object/from16 v0, p0

    move-object/from16 v1, v27

    move-object/from16 v2, v35

    move-object/from16 v3, v32

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v35

    if-eqz v35, :cond_36

    .line 1641
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v28

    .line 1642
    invoke-virtual/range {v28 .. v28}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v27

    .line 1643
    new-instance v35, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v36, v0

    invoke-direct/range {v35 .. v36}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v36, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v35

    move-object/from16 v2, v36

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1645
    :cond_36
    invoke-virtual/range {v32 .. v32}, Ljava/util/ArrayList;->size()I

    move-result v35

    if-nez v35, :cond_37

    .line 1647
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " Fail:uuidList"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    const/16 v35, 0x0

    return v35

    .line 1651
    :cond_37
    move-object/from16 v0, v32

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v35

    if-eqz v35, :cond_38

    .line 1652
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " PASS ALL with S/N:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    const/16 v35, 0x1

    return v35

    .line 1655
    :cond_38
    const-string/jumbo v35, "AASATokenParser"

    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v37, " FAIL only S/N:"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1656
    const/16 v35, 0x0

    return v35

    .line 1662
    .end local v32    # "uuidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_39
    const-string/jumbo v35, "AASATokenParser"

    const-string/jumbo v36, " Fail: auth"

    invoke-static/range {v35 .. v36}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_b .. :try_end_b} :catch_2

    .line 1679
    const/16 v35, 0x0

    return v35

    .line 1239
    .end local v6    # "checkList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11    # "ii":I
    .end local v12    # "isCheckUID":Z
    .end local v13    # "isModelChecked":Z
    .end local v14    # "isValidDate":Z
    .end local v20    # "mTokenEntry":Ljava/util/jar/JarEntry;
    .end local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    .end local v23    # "mode":Ljava/lang/String;
    .end local v27    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v28    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v30    # "success_check_count":I
    .end local v33    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v34    # "which":I
    .restart local v22    # "mTokenFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v35

    move-object/from16 v21, v22

    .end local v22    # "mTokenFile":Ljava/util/jar/JarFile;
    .local v21, "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_2

    .line 1235
    .end local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v22    # "mTokenFile":Ljava/util/jar/JarFile;
    :catch_5
    move-exception v17

    .restart local v17    # "m":Ljava/io/IOException;
    move-object/from16 v21, v22

    .end local v22    # "mTokenFile":Ljava/util/jar/JarFile;
    .restart local v21    # "mTokenFile":Ljava/util/jar/JarFile;
    goto/16 :goto_1

    .line 1290
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x3 -> :sswitch_4
        0x4 -> :sswitch_5
        0x5 -> :sswitch_6
        0x6 -> :sswitch_7
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0xa -> :sswitch_a
        0xff -> :sswitch_1
    .end sparse-switch
.end method

.method public AASA_getPackageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .param p1, "inputFile"    # Ljava/lang/String;

    .prologue
    .line 611
    const/16 v17, 0x0

    .line 612
    .local v17, "mVersionCode":Ljava/lang/String;
    const/4 v4, 0x0

    .line 613
    .local v4, "apkFile":Ljava/util/jar/JarFile;
    const/16 v16, 0x0

    .line 616
    .local v16, "is":Ljava/io/InputStream;
    const v13, 0x100101

    .line 617
    .local v13, "endDocTag":I
    const v20, 0x100102

    .line 618
    .local v20, "startTag":I
    const v14, 0x100103

    .line 619
    .local v14, "endTag":I
    const/16 v21, 0x24

    .line 620
    .local v21, "stringIndexOff":I
    const/16 v22, 0x0

    .line 621
    .local v22, "stringTableOff":I
    const/16 v25, 0x0

    .line 623
    .local v25, "xmlTagOff":I
    const/4 v15, 0x0

    .line 624
    .local v15, "i":I
    const/16 v19, 0x0

    .line 626
    .local v19, "off":I
    :try_start_0
    new-instance v5, Ljava/util/jar/JarFile;

    move-object/from16 v0, p1

    invoke-direct {v5, v0}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 627
    .local v5, "apkFile":Ljava/util/jar/JarFile;
    :try_start_1
    const-string/jumbo v26, "AndroidManifest.xml"

    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v26

    move-object/from16 v0, v26

    invoke-virtual {v5, v0}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v16

    .line 628
    .local v16, "is":Ljava/io/InputStream;
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->available()I

    move-result v26

    move/from16 v0, v26

    new-array v0, v0, [B

    move-object/from16 v24, v0

    .line 629
    .local v24, "xml":[B
    move-object/from16 v0, v16

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    .line 630
    const/16 v26, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v26

    mul-int/lit8 v26, v26, 0x4

    add-int/lit8 v22, v26, 0x24

    .line 631
    const/16 v26, 0xc

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v25

    .line 632
    move/from16 v15, v25

    :goto_0
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x4

    move/from16 v0, v26

    if-ge v15, v0, :cond_0

    .line 634
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1, v15}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v26

    const v27, 0x100102

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_3

    .line 636
    move/from16 v25, v15

    .line 640
    :cond_0
    move/from16 v19, v25

    .line 642
    .end local v17    # "mVersionCode":Ljava/lang/String;
    :cond_1
    :goto_1
    move-object/from16 v0, v24

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_7

    .line 644
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v19

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v23

    .line 645
    .local v23, "tag0":I
    const v26, 0x100102

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_5

    .line 647
    add-int/lit8 v26, v19, 0x1c

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v18

    .line 648
    .local v18, "numbAttrs":I
    add-int/lit8 v19, v19, 0x24

    .line 649
    const/4 v15, 0x0

    :goto_2
    move/from16 v0, v18

    if-ge v15, v0, :cond_1

    .line 651
    add-int/lit8 v26, v19, 0x4

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v7

    .line 652
    .local v7, "attrNameSi":I
    add-int/lit8 v26, v19, 0x8

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v10

    .line 653
    .local v10, "attrValueSi":I
    add-int/lit8 v26, v19, 0x10

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v26

    invoke-direct {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->LEW([BI)I

    move-result v8

    .line 654
    .local v8, "attrResId":I
    const/4 v6, 0x0

    .line 655
    .local v6, "attrName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v7}, Landroid/content/pm/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v6

    .line 656
    .local v6, "attrName":Ljava/lang/String;
    const-string/jumbo v26, "versionCode"

    move-object/from16 v0, v26

    invoke-virtual {v0, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_2

    .line 658
    const/16 v26, -0x1

    move/from16 v0, v26

    if-eq v10, v0, :cond_4

    .line 659
    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v10}, Landroid/content/pm/AASATokenParser;->compXmlString([BIII)Ljava/lang/String;

    move-result-object v9

    .line 661
    .local v9, "attrValue":Ljava/lang/String;
    :goto_3
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v17

    .line 663
    .end local v9    # "attrValue":Ljava/lang/String;
    :cond_2
    add-int/lit8 v19, v19, 0x14

    .line 649
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 632
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrNameSi":I
    .end local v8    # "attrResId":I
    .end local v10    # "attrValueSi":I
    .end local v18    # "numbAttrs":I
    .end local v23    # "tag0":I
    .restart local v17    # "mVersionCode":Ljava/lang/String;
    :cond_3
    add-int/lit8 v15, v15, 0x4

    goto/16 :goto_0

    .line 660
    .end local v17    # "mVersionCode":Ljava/lang/String;
    .restart local v6    # "attrName":Ljava/lang/String;
    .restart local v7    # "attrNameSi":I
    .restart local v8    # "attrResId":I
    .restart local v10    # "attrValueSi":I
    .restart local v18    # "numbAttrs":I
    .restart local v23    # "tag0":I
    :cond_4
    new-instance v26, Ljava/lang/Integer;

    move-object/from16 v0, v26

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v9

    goto :goto_3

    .line 666
    .end local v6    # "attrName":Ljava/lang/String;
    .end local v7    # "attrNameSi":I
    .end local v8    # "attrResId":I
    .end local v10    # "attrValueSi":I
    .end local v18    # "numbAttrs":I
    :cond_5
    const v26, 0x100103

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_6

    .line 668
    add-int/lit8 v19, v19, 0x18

    goto/16 :goto_1

    .line 670
    :cond_6
    const v26, 0x100101

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_7

    .line 690
    .end local v23    # "tag0":I
    :cond_7
    if-eqz v16, :cond_8

    .line 691
    :try_start_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 693
    :cond_8
    if-eqz v5, :cond_9

    .line 694
    invoke-virtual {v5}, Ljava/util/zip/ZipFile;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 701
    :cond_9
    :goto_4
    if-nez v17, :cond_a

    .line 703
    const-string/jumbo v17, "MAYBEOTA"

    .line 704
    .local v17, "mVersionCode":Ljava/lang/String;
    sget-object v26, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v27, "WARNING: Package Name can not be found, Maybe It is OTA"

    invoke-virtual/range {v26 .. v27}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 706
    .end local v17    # "mVersionCode":Ljava/lang/String;
    :cond_a
    return-object v17

    .line 696
    :catch_0
    move-exception v12

    .line 698
    .local v12, "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4

    .line 682
    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .end local v12    # "e1":Ljava/io/IOException;
    .end local v24    # "xml":[B
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    .local v16, "is":Ljava/io/InputStream;
    .local v17, "mVersionCode":Ljava/lang/String;
    :catch_1
    move-exception v11

    .line 683
    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .end local v16    # "is":Ljava/io/InputStream;
    .end local v17    # "mVersionCode":Ljava/lang/String;
    .local v11, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_3
    const-string/jumbo v26, "AASATokenParser"

    const-string/jumbo v27, "Exception on getpackageinfo"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 684
    const/16 v26, 0x0

    .line 690
    if-eqz v16, :cond_b

    .line 691
    :try_start_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 693
    :cond_b
    if-eqz v4, :cond_c

    .line 694
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 684
    :cond_c
    :goto_6
    return-object v26

    .line 696
    :catch_2
    move-exception v12

    .line 698
    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_6

    .line 686
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v12    # "e1":Ljava/io/IOException;
    :catchall_0
    move-exception v26

    .line 690
    :goto_7
    if-eqz v16, :cond_d

    .line 691
    :try_start_5
    invoke-virtual/range {v16 .. v16}, Ljava/io/InputStream;->close()V

    .line 693
    :cond_d
    if-eqz v4, :cond_e

    .line 694
    invoke-virtual {v4}, Ljava/util/zip/ZipFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 686
    :cond_e
    :goto_8
    throw v26

    .line 696
    :catch_3
    move-exception v12

    .line 698
    .restart local v12    # "e1":Ljava/io/IOException;
    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 686
    .end local v12    # "e1":Ljava/io/IOException;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    :catchall_1
    move-exception v26

    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .local v4, "apkFile":Ljava/util/jar/JarFile;
    goto :goto_7

    .line 682
    .end local v4    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v5    # "apkFile":Ljava/util/jar/JarFile;
    :catch_4
    move-exception v11

    .restart local v11    # "e":Ljava/lang/Exception;
    move-object v4, v5

    .end local v5    # "apkFile":Ljava/util/jar/JarFile;
    .restart local v4    # "apkFile":Ljava/util/jar/JarFile;
    goto :goto_5
.end method

.method public AASA_getSKAInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "ArchiveSourcePath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 780
    const-string/jumbo v0, ""

    .line 781
    .local v0, "Hash":Ljava/lang/String;
    iput-object p1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 782
    invoke-direct {p0}, Landroid/content/pm/AASATokenParser;->advancedCheckHash()Ljava/lang/String;

    move-result-object v0

    .line 783
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 787
    :cond_0
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 788
    return-object v2

    .line 784
    :cond_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    .line 785
    return-object v0
.end method

.method public AASA_getTokenContent()Z
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 1687
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    .line 1690
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1691
    .local v6, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1692
    .local v5, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1695
    :try_start_1
    const-string/jumbo v7, "PACKAGE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1696
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1697
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1698
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1702
    const-string/jumbo v7, "DATE"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1704
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1705
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1706
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1710
    const-string/jumbo v7, "VERSION"

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-direct {p0, v5, v7, v8}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1712
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1713
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1714
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1737
    :goto_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1738
    .local v3, "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "SharedAllowPM"

    invoke-direct {p0, v5, v7, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1740
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1741
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1742
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1744
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1746
    .local v4, "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string/jumbo v7, "PERMISSION"

    invoke-direct {p0, v5, v7, v4}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    .line 1749
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1750
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1751
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 1754
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-nez v7, :cond_3

    return v10

    .line 1700
    .end local v3    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_0
    return v10

    .line 1708
    :cond_1
    return v10

    .line 1716
    :cond_2
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    const-string/jumbo v8, "1"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1718
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v6

    .line 1719
    invoke-virtual {v6}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 1720
    new-instance v7, Ljava/io/ByteArrayInputStream;

    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string/jumbo v8, "UTF-8"

    invoke-interface {v5, v7, v8}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1769
    :catch_0
    move-exception v0

    .line 1771
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1772
    return v10

    .line 1756
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v3    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_3
    :try_start_3
    iget-object v7, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 1759
    const/4 v2, 0x0

    .local v2, "ii":I
    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_4

    .line 1760
    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1759
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1763
    .end local v2    # "ii":I
    :cond_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 1764
    const/4 v2, 0x0

    .restart local v2    # "ii":I
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 1765
    iget-object v8, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    .line 1764
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1774
    .end local v2    # "ii":I
    .end local v3    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v6    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :catch_1
    move-exception v1

    .line 1776
    .local v1, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v7, "AASATokenParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "er"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    return v10

    .line 1779
    .end local v1    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "locSharedAllowPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v4    # "locSharedDeniedPM":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v5    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v6    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    :cond_5
    const/4 v7, 0x1

    return v7
.end method

.method public SKA_CheckList(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "hash"    # Ljava/lang/String;

    .prologue
    .line 1783
    const/4 v2, 0x0

    .line 1785
    .local v2, "result":Z
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1786
    .local v0, "checkList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/util/ArrayList<Ljava/lang/String;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1788
    .local v1, "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {p0, v0}, Landroid/content/pm/AASATokenParser;->SKA_GetDataFromXml(Ljava/util/HashMap;)V

    .line 1789
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1790
    if-nez p2, :cond_1

    .line 1791
    const/4 v2, 0x1

    .line 1799
    :cond_0
    :goto_0
    return v2

    .line 1793
    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;

    .line 1794
    .restart local v1    # "hashList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1795
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public aasaDevToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "deviceID"    # Ljava/lang/String;
    .param p3, "targetPackage"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1144
    const/4 v8, 0x0

    .line 1145
    .local v8, "result":Z
    const/4 v5, 0x0

    .line 1146
    .local v5, "file":Ljava/io/File;
    new-instance v5, Ljava/io/File;

    .end local v5    # "file":Ljava/io/File;
    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v5, "file":Ljava/io/File;
    if-eqz v5, :cond_2

    .line 1148
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    .line 1149
    return v10

    .line 1151
    :cond_0
    const/4 v6, 0x0

    .line 1152
    .local v6, "fis":Ljava/io/FileInputStream;
    const/4 v2, 0x0

    .line 1154
    .local v2, "count":I
    :try_start_0
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1155
    .local v7, "fis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-virtual {v7}, Ljava/io/FileInputStream;->available()I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    .end local v6    # "fis":Ljava/io/FileInputStream;
    move-result v2

    move-object v6, v7

    .line 1164
    .end local v7    # "fis":Ljava/io/FileInputStream;
    :goto_0
    if-eqz v2, :cond_1

    .line 1165
    new-array v0, v2, [B

    .line 1167
    .local v0, "buffer":[B
    :try_start_2
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 1168
    invoke-virtual {p0, v0}, Landroid/content/pm/AASATokenParser;->AASA_VerifyFile([B)[B

    move-result-object v1

    .line 1169
    .local v1, "contents":[B
    if-eqz v1, :cond_1

    .line 1170
    invoke-virtual {v1}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [B

    iput-object v9, p0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 1171
    const-string/jumbo v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " targetPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    invoke-direct {p0, p3, p2}, Landroid/content/pm/AASATokenParser;->AASA_isTargetPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1173
    const-string/jumbo v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " targetPackage: ok: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1174
    const/4 v8, 0x1

    .line 1186
    .end local v0    # "buffer":[B
    .end local v1    # "contents":[B
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 1187
    :try_start_3
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 1195
    .end local v2    # "count":I
    :cond_2
    :goto_2
    return v8

    .line 1160
    .restart local v2    # "count":I
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_0
    move-exception v3

    .line 1161
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/io/IOException;
    :goto_3
    const/4 v2, 0x0

    goto :goto_0

    .line 1157
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1158
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .local v4, "e1":Ljava/io/FileNotFoundException;
    :goto_4
    const/4 v2, 0x0

    goto :goto_0

    .line 1177
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    .restart local v0    # "buffer":[B
    .restart local v1    # "contents":[B
    :cond_3
    :try_start_4
    const-string/jumbo v9, "AASATokenParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, " targetPackage:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, " is not DevTargert"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1182
    .end local v1    # "contents":[B
    :catch_2
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 1191
    .end local v0    # "buffer":[B
    .end local v3    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v3

    .line 1192
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_2

    .line 1157
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e1":Ljava/io/FileNotFoundException;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .local v6, "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 1160
    .end local v4    # "e1":Ljava/io/FileNotFoundException;
    .end local v6    # "fis":Ljava/io/FileInputStream;
    .restart local v7    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v3

    .restart local v3    # "e":Ljava/io/IOException;
    move-object v6, v7

    .end local v7    # "fis":Ljava/io/FileInputStream;
    .restart local v6    # "fis":Ljava/io/FileInputStream;
    goto :goto_3
.end method

.method checkIntegrity([B)[B
    .locals 35
    .param p1, "contents"    # [B

    .prologue
    .line 386
    const/16 v17, 0x0

    .line 387
    .local v17, "isSKA":Z
    const/16 v19, 0x200

    .line 388
    .local v19, "keySize":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, ""

    invoke-virtual/range {v32 .. v33}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_0

    .line 389
    const/16 v17, 0x1

    .line 391
    :cond_0
    if-nez v17, :cond_1

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v32, v0

    if-eqz v32, :cond_2

    .line 395
    :cond_1
    :goto_0
    move-object/from16 v0, p1

    array-length v0, v0

    move/from16 v32, v0

    move/from16 v0, v32

    move/from16 v1, v19

    if-ge v0, v1, :cond_3

    .line 396
    const/16 v32, 0x0

    return-object v32

    .line 392
    :cond_2
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "AASA Token change key 256"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const/16 v19, 0x100

    goto :goto_0

    .line 400
    :cond_3
    :try_start_0
    move/from16 v0, v19

    new-array v0, v0, [B

    move-object/from16 v25, v0

    .line 402
    .local v25, "signData":[B
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v25

    move/from16 v3, v33

    move/from16 v4, v19

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 403
    const/16 v32, 0x7

    move/from16 v0, v32

    new-array v0, v0, [B

    move-object/from16 v29, v0

    .line 405
    .local v29, "tempBuf":[B
    const/16 v21, 0x0

    .line 406
    .local v21, "numberIndex":I
    const/16 v16, 0x0

    .line 408
    .local v16, "isError":Z
    move/from16 v14, v19

    .local v14, "ii":I
    :goto_1
    aget-byte v32, p1, v14

    const/16 v33, 0x2c

    move/from16 v0, v32

    move/from16 v1, v33

    if-eq v0, v1, :cond_4

    .line 410
    const/16 v32, 0x7

    move/from16 v0, v21

    move/from16 v1, v32

    if-lt v0, v1, :cond_5

    .line 413
    const/16 v16, 0x1

    .line 419
    :cond_4
    if-eqz v16, :cond_8

    .line 420
    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v32, v0

    if-eqz v32, :cond_6

    .line 422
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "AASA Token might be signed 256"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    const/16 v32, 0x0

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    .line 424
    invoke-virtual/range {p0 .. p1}, Landroid/content/pm/AASATokenParser;->checkIntegrity([B)[B

    move-result-object v32

    return-object v32

    .line 416
    :cond_5
    aget-byte v32, p1, v14

    aput-byte v32, v29, v21

    .line 408
    add-int/lit8 v14, v14, 0x1

    add-int/lit8 v21, v21, 0x1

    goto :goto_1

    .line 426
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v32, v0

    if-nez v32, :cond_7

    .line 427
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    .line 428
    :cond_7
    const/16 v32, 0x0

    return-object v32

    .line 431
    :cond_8
    move/from16 v0, v21

    new-array v0, v0, [B

    move-object/from16 v20, v0

    .line 432
    .local v20, "number":[B
    const/16 v32, 0x0

    const/16 v33, 0x0

    move-object/from16 v0, v29

    move/from16 v1, v32

    move-object/from16 v2, v20

    move/from16 v3, v33

    move/from16 v4, v21

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 433
    new-instance v32, Ljava/lang/String;

    move-object/from16 v0, v32

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v28

    .line 434
    .local v28, "sizeOfcontents":I
    move/from16 v0, v28

    new-array v0, v0, [B

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    .line 435
    add-int v32, v19, v21

    const-string/jumbo v33, ","

    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v33

    add-int v32, v32, v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v33, v0

    const/16 v34, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v32

    move-object/from16 v2, v33

    move/from16 v3, v34

    move/from16 v4, v28

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 436
    const-string/jumbo v32, "SHA256WithRSAEncryption"

    invoke-static/range {v32 .. v32}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v26

    .line 437
    .local v26, "signature":Ljava/security/Signature;
    const-string/jumbo v32, "x.509"

    invoke-static/range {v32 .. v32}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v8

    .line 438
    .local v8, "certfactory":Ljava/security/cert/CertificateFactory;
    const/4 v9, 0x0

    .line 439
    .local v9, "certificate":Ljava/io/InputStream;
    const/16 v27, 0x0

    .line 441
    .local v27, "signerCert":Ljava/security/cert/X509Certificate;
    if-eqz v17, :cond_15

    .line 442
    const/16 v30, 0x0

    .line 443
    .local v30, "tokenFile":Ljava/util/jar/JarFile;
    const/4 v7, 0x0

    .line 444
    .local v7, "certEntry":Ljava/util/jar/JarEntry;
    const/4 v13, 0x0

    .line 445
    .local v13, "fis":Ljava/io/InputStream;
    new-instance v30, Ljava/util/jar/JarFile;

    .end local v30    # "tokenFile":Ljava/util/jar/JarFile;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mArchiveSourcePath:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/util/jar/JarFile;-><init>(Ljava/lang/String;)V

    .line 446
    .local v30, "tokenFile":Ljava/util/jar/JarFile;
    if-eqz v30, :cond_9

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/util/jar/JarFile;->getJarEntry(Ljava/lang/String;)Ljava/util/jar/JarEntry;

    move-result-object v7

    .line 449
    .local v7, "certEntry":Ljava/util/jar/JarEntry;
    if-eqz v7, :cond_f

    .line 450
    move-object/from16 v0, v30

    invoke-virtual {v0, v7}, Ljava/util/jar/JarFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    .line 451
    .local v13, "fis":Ljava/io/InputStream;
    invoke-virtual {v8, v13}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v27

    .end local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    check-cast v27, Ljava/security/cert/X509Certificate;

    .line 461
    .end local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "fis":Ljava/io/InputStream;
    :cond_9
    if-eqz v30, :cond_a

    .line 462
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipFile;->close()V

    .line 463
    :cond_a
    if-eqz v13, :cond_b

    .line 464
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 468
    :cond_b
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v23

    .line 469
    .local v23, "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 470
    .local v22, "parser":Lorg/xmlpull/v1/XmlPullParser;
    new-instance v32, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 471
    new-instance v31, Ljava/util/ArrayList;

    invoke-direct/range {v31 .. v31}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 473
    .local v31, "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_2
    const-string/jumbo v32, "INDEX"

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v32

    move-object/from16 v3, v31

    invoke-direct {v0, v1, v2, v3}, Landroid/content/pm/AASATokenParser;->parseXML(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v32

    if-eqz v32, :cond_c

    .line 475
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v23

    .line 476
    invoke-virtual/range {v23 .. v23}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v22

    .line 477
    new-instance v32, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v33, v0

    invoke-direct/range {v32 .. v33}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const/16 v33, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 483
    :cond_c
    const/16 v32, 0x0

    :try_start_3
    invoke-virtual/range {v31 .. v32}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    .line 484
    .local v15, "index":Ljava/lang/String;
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "index : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    const-string/jumbo v32, "0.0"

    move-object/from16 v0, v32

    invoke-virtual {v0, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_11

    .line 487
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "ENG Cert Index"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 536
    .end local v9    # "certificate":Ljava/io/InputStream;
    .end local v15    # "index":Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v30    # "tokenFile":Ljava/util/jar/JarFile;
    .end local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_d
    :goto_2
    :try_start_4
    invoke-virtual/range {v26 .. v27}, Ljava/security/Signature;->initVerify(Ljava/security/cert/Certificate;)V

    .line 539
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v32, v0

    const/16 v33, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, v32

    move/from16 v2, v33

    move/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Ljava/security/Signature;->update([BII)V

    .line 540
    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/security/Signature;->verify([B)Z

    move-result v32

    if-eqz v32, :cond_1e

    .line 542
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "Token is verificated in checkIntegrity!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz v17, :cond_1c

    .line 545
    new-instance v9, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCACertName:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 546
    .local v9, "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 548
    .local v5, "CAcert":Ljava/security/cert/X509Certificate;
    :try_start_5
    invoke-virtual {v5}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v32

    move-object/from16 v0, v27

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 549
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "signerCert is verificated!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 558
    :try_start_6
    new-instance v9, Ljava/io/FileInputStream;

    .line 559
    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mRootCertName:Ljava/lang/String;

    move-object/from16 v32, v0

    .line 558
    move-object/from16 v0, v32

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 560
    .restart local v9    # "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v24

    check-cast v24, Ljava/security/cert/X509Certificate;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .line 563
    .local v24, "rootCert":Ljava/security/cert/X509Certificate;
    :try_start_7
    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 564
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "CAcert is verificated!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 574
    :try_start_8
    invoke-virtual/range {v24 .. v24}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v32

    move-object/from16 v0, v24

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 575
    if-eqz v9, :cond_e

    .line 576
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 577
    :cond_e
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "rootCert is verificated!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v32, v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    return-object v32

    .line 453
    .end local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .local v9, "certificate":Ljava/io/InputStream;
    .local v13, "fis":Ljava/io/InputStream;
    .restart local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    .restart local v30    # "tokenFile":Ljava/util/jar/JarFile;
    :cond_f
    :try_start_9
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "Token Cert does not exist!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-eqz v30, :cond_10

    .line 456
    invoke-virtual/range {v30 .. v30}, Ljava/util/zip/ZipFile;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 458
    :cond_10
    const/16 v32, 0x0

    return-object v32

    .line 479
    .end local v7    # "certEntry":Ljava/util/jar/JarEntry;
    .end local v13    # "fis":Ljava/io/InputStream;
    .end local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    .restart local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .restart local v23    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 480
    .local v10, "e":Ljava/io/IOException;
    :try_start_a
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v10}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const/16 v32, 0x0

    return-object v32

    .line 489
    .end local v10    # "e":Ljava/io/IOException;
    .restart local v15    # "index":Ljava/lang/String;
    :cond_11
    const-string/jumbo v32, "\\."

    move-object/from16 v0, v32

    invoke-virtual {v15, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v18

    .line 492
    .local v18, "keyIndex":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v32, v0

    const-string/jumbo v33, "[^0-9]"

    const-string/jumbo v34, ""

    invoke-virtual/range {v32 .. v34}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 493
    .local v6, "SignerVersion":Ljava/lang/String;
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "mTokenName : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenName:Ljava/lang/String;

    move-object/from16 v34, v0

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v34, " SignerVersion : "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    const-string/jumbo v32, ""

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-eqz v32, :cond_12

    .line 497
    const-string/jumbo v6, "1"

    .line 499
    :cond_12
    const/16 v32, 0x1

    aget-object v32, v18, v32

    move-object/from16 v0, v32

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v32

    if-nez v32, :cond_13

    .line 500
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "Signer Cert File is not matched with index!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    const/16 v32, 0x0

    return-object v32

    .line 503
    :cond_13
    const-string/jumbo v32, "SIGNER"

    const/16 v33, 0x1

    aget-object v33, v18, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->SKA_CheckList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_14

    .line 504
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "SIGNER is in CRL"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    const/16 v32, 0x0

    return-object v32

    .line 507
    :cond_14
    const-string/jumbo v32, "INTER"

    const/16 v33, 0x0

    aget-object v33, v18, v33

    move-object/from16 v0, p0

    move-object/from16 v1, v32

    move-object/from16 v2, v33

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/AASATokenParser;->SKA_CheckList(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v32

    if-eqz v32, :cond_d

    .line 508
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "INTER is in CRL"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2

    .line 509
    const/16 v32, 0x0

    return-object v32

    .line 513
    .end local v6    # "SignerVersion":Ljava/lang/String;
    .end local v15    # "index":Ljava/lang/String;
    .end local v18    # "keyIndex":[Ljava/lang/String;
    .end local v22    # "parser":Lorg/xmlpull/v1/XmlPullParser;
    .end local v23    # "pullParserFactory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v31    # "verifyList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catch_1
    move-exception v12

    .line 514
    .local v12, "e":Lorg/xmlpull/v1/XmlPullParserException;
    :try_start_b
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, " "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual {v12}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    const/16 v32, 0x0

    return-object v32

    .line 519
    .end local v12    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .end local v30    # "tokenFile":Ljava/util/jar/JarFile;
    .restart local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    move/from16 v32, v0

    if-eqz v32, :cond_17

    .line 520
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_16

    .line 521
    const-string/jumbo v32, "/system/etc/aasa_real_crt2.crt"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 533
    :goto_3
    new-instance v9, Ljava/io/FileInputStream;

    .end local v9    # "certificate":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    move-object/from16 v32, v0

    move-object/from16 v0, v32

    invoke-direct {v9, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 534
    .local v9, "certificate":Ljava/io/InputStream;
    invoke-virtual {v8, v9}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v27

    .end local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    check-cast v27, Ljava/security/cert/X509Certificate;

    .local v27, "signerCert":Ljava/security/cert/X509Certificate;
    goto/16 :goto_2

    .line 523
    .local v9, "certificate":Ljava/io/InputStream;
    .local v27, "signerCert":Ljava/security/cert/X509Certificate;
    :cond_16
    const-string/jumbo v32, "/system/etc/aasa_test_crt2.crt"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_3

    .line 601
    .end local v8    # "certfactory":Ljava/security/cert/CertificateFactory;
    .end local v9    # "certificate":Ljava/io/InputStream;
    .end local v14    # "ii":I
    .end local v16    # "isError":Z
    .end local v20    # "number":[B
    .end local v21    # "numberIndex":I
    .end local v25    # "signData":[B
    .end local v26    # "signature":Ljava/security/Signature;
    .end local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    .end local v28    # "sizeOfcontents":I
    .end local v29    # "tempBuf":[B
    :catch_2
    move-exception v11

    .line 602
    .local v11, "e":Ljava/lang/Exception;
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "ERROR: checkIntegrity "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    const/16 v32, 0x0

    return-object v32

    .line 526
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v8    # "certfactory":Ljava/security/cert/CertificateFactory;
    .restart local v9    # "certificate":Ljava/io/InputStream;
    .restart local v14    # "ii":I
    .restart local v16    # "isError":Z
    .restart local v20    # "number":[B
    .restart local v21    # "numberIndex":I
    .restart local v25    # "signData":[B
    .restart local v26    # "signature":Ljava/security/Signature;
    .restart local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    .restart local v28    # "sizeOfcontents":I
    .restart local v29    # "tempBuf":[B
    :cond_17
    :try_start_c
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    move/from16 v32, v0

    if-eqz v32, :cond_18

    .line 527
    const-string/jumbo v32, "/system/etc/aasa_real_crt.crt"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 531
    :goto_4
    const/16 v32, 0x1

    move/from16 v0, v32

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/content/pm/AASATokenParser;->mIsSigned512:Z

    goto :goto_3

    .line 529
    :cond_18
    const-string/jumbo v32, "/system/etc/aasa_test_crt.crt"

    move-object/from16 v0, v32

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_4

    .line 550
    .end local v27    # "signerCert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .local v9, "certificate":Ljava/io/InputStream;
    :catch_3
    move-exception v11

    .line 551
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "ERROR: SignerCert is not verified by CACert "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    if-eqz v9, :cond_19

    .line 553
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 554
    :cond_19
    const/16 v32, 0x0

    return-object v32

    .line 565
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    :catch_4
    move-exception v11

    .line 566
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "ERROR: CACert is not verified by RootCert "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    if-eqz v9, :cond_1a

    .line 568
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 569
    :cond_1a
    const/16 v32, 0x0

    return-object v32

    .line 579
    .end local v11    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v11

    .line 580
    .restart local v11    # "e":Ljava/lang/Exception;
    const-string/jumbo v32, "AASATokenParser"

    new-instance v33, Ljava/lang/StringBuilder;

    invoke-direct/range {v33 .. v33}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v34, "ERROR: rootCert is not verified "

    invoke-virtual/range {v33 .. v34}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    move-object/from16 v0, v33

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    if-eqz v9, :cond_1b

    .line 582
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 583
    :cond_1b
    const/16 v32, 0x0

    return-object v32

    .line 587
    .end local v5    # "CAcert":Ljava/security/cert/X509Certificate;
    .end local v9    # "certificate":Ljava/io/InputStream;
    .end local v11    # "e":Ljava/lang/Exception;
    .end local v24    # "rootCert":Ljava/security/cert/X509Certificate;
    :cond_1c
    if-eqz v9, :cond_1d

    .line 588
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V

    .line 589
    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/content/pm/AASATokenParser;->mTokenContents:[B

    move-object/from16 v32, v0

    return-object v32

    .line 594
    :cond_1e
    const-string/jumbo v32, "AASATokenParser"

    const-string/jumbo v33, "Token is NOT verificated in checkIntegrity!"

    invoke-static/range {v32 .. v33}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    if-eqz v9, :cond_1f

    .line 596
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2

    .line 597
    :cond_1f
    const/16 v32, 0x0

    return-object v32
.end method

.method public getValue()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Landroid/content/pm/AASATokenParser;->mTokenValue:Ljava/util/ArrayList;

    return-object v0
.end method

.method public setCertPath(Z)V
    .locals 1
    .param p1, "isDeviceMode"    # Z

    .prologue
    .line 81
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    .line 82
    iget-boolean v0, p0, Landroid/content/pm/AASATokenParser;->misDeviceMode:Z

    if-eqz v0, :cond_0

    .line 83
    const-string/jumbo v0, "/system/etc/aasa_real_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    .line 79
    :goto_0
    return-void

    .line 85
    :cond_0
    const-string/jumbo v0, "/system/etc/aasa_test_crt2.crt"

    iput-object v0, p0, Landroid/content/pm/AASATokenParser;->mCertPath:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSystemApp(Z)V
    .locals 0
    .param p1, "isAppSystem"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/content/pm/AASATokenParser;->misAppSystem:Z

    .line 89
    return-void
.end method
