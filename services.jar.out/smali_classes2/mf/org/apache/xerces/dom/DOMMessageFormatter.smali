.class public Lmf/org/apache/xerces/dom/DOMMessageFormatter;
.super Ljava/lang/Object;
.source "DOMMessageFormatter.java"


# static fields
.field public static final DOM_DOMAIN:Ljava/lang/String; = "http://www.w3.org/dom/DOMTR"

.field public static final SERIALIZER_DOMAIN:Ljava/lang/String; = "http://apache.org/xml/serializer"

.field public static final XML_DOMAIN:Ljava/lang/String; = "http://www.w3.org/TR/1998/REC-xml-19980210"

.field private static domResourceBundle:Ljava/util/ResourceBundle;

.field private static locale:Ljava/util/Locale;

.field private static serResourceBundle:Ljava/util/ResourceBundle;

.field private static xmlResourceBundle:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public static formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v3, 0x0

    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_1

    move-object v2, v1

    :goto_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    if-nez p2, :cond_3

    :goto_1
    if-eqz v1, :cond_4

    move-object p1, v1

    :cond_0
    return-object p1

    :cond_1
    invoke-static {}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->init()V

    invoke-static {p0}, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    if-eqz v1, :cond_2

    move-object v2, v1

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/util/MissingResourceException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "Unknown domain"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v3, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_1
    invoke-static {v1, p2}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_2
    const-string/jumbo v1, "FormatFailed"

    invoke-virtual {v2, v1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, p1}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string/jumbo v0, "BadMessageKey"

    invoke-virtual {v2, v0}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/MissingResourceException;

    invoke-direct {v1, p1, v0, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v1

    :cond_4
    array-length v1, p2

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :goto_2
    array-length v2, p2

    if-ge v0, v2, :cond_0

    if-gtz v0, :cond_5

    :goto_3
    aget-object v2, p2, v0

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_3
.end method

.method static getResourceBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;
    .locals 1

    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    return-object v0

    :cond_1
    const-string/jumbo v0, "http://www.w3.org/dom/DOMTR"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    if-ne p0, v0, :cond_3

    :cond_2
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    return-object v0

    :cond_3
    const-string/jumbo v0, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string/jumbo v0, "http://apache.org/xml/serializer"

    if-ne p0, v0, :cond_5

    :cond_4
    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    return-object v0

    :cond_5
    const-string/jumbo v0, "http://apache.org/xml/serializer"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v0, 0x0

    return-object v0
.end method

.method public static init()V
    .locals 2

    sget-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    if-eqz v0, :cond_0

    :goto_0
    const-string/jumbo v1, "mf.org.apache.xerces.impl.msg.DOMMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->domResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "mf.org.apache.xerces.impl.msg.XMLSerializerMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v1

    sput-object v1, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->serResourceBundle:Ljava/util/ResourceBundle;

    const-string/jumbo v1, "mf.org.apache.xerces.impl.msg.XMLMessages"

    invoke-static {v1, v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->xmlResourceBundle:Ljava/util/ResourceBundle;

    return-void

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    goto :goto_0
.end method

.method public static setLocale(Ljava/util/Locale;)V
    .locals 0

    sput-object p0, Lmf/org/apache/xerces/dom/DOMMessageFormatter;->locale:Ljava/util/Locale;

    return-void
.end method
