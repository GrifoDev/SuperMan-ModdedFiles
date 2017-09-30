.class public Lcom/thoughtworks/xstream/io/xml/XppDomDriver;
.super Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;


# static fields
.field private static factory:Lorg/xmlpull/v1/XmlPullParserFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;

    invoke-direct {v0}, Lcom/thoughtworks/xstream/io/xml/XmlFriendlyNameCoder;-><init>()V

    invoke-direct {p0, v0}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method

.method public constructor <init>(Lcom/thoughtworks/xstream/io/xml/XmlFriendlyReplacer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/thoughtworks/xstream/io/xml/AbstractXppDomDriver;-><init>(Lcom/thoughtworks/xstream/io/naming/NameCoder;)V

    return-void
.end method


# virtual methods
.method protected declared-synchronized createParser()Lorg/xmlpull/v1/XmlPullParser;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XppDomDriver;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-class v1, Lcom/thoughtworks/xstream/io/xml/XppDomDriver;

    invoke-static {v0, v1}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance(Ljava/lang/String;Ljava/lang/Class;)Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    sput-object v0, Lcom/thoughtworks/xstream/io/xml/XppDomDriver;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    :cond_0
    sget-object v0, Lcom/thoughtworks/xstream/io/xml/XppDomDriver;->factory:Lorg/xmlpull/v1/XmlPullParserFactory;

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
