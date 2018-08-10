.class public Lcom/android/systemui/wallpaper/theme/xmlparser/ScreenParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "ScreenParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v4

    if-nez v4, :cond_1

    return-void

    :cond_1
    invoke-interface {v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_6

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string/jumbo v5, "width"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setPackgeWidth(F)V

    goto :goto_1

    :cond_4
    const-string/jumbo v5, "height"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setPackgeHeight(F)V

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "density"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    invoke-virtual {p1, v5}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setPackgeDensity(F)V

    goto :goto_1

    :cond_6
    return-void
.end method
