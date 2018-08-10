.class public Lcom/android/systemui/wallpaper/theme/xmlparser/SceneParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "SceneParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 13

    const/4 v12, -0x1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    if-nez v10, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v7

    if-eqz v0, :cond_2

    if-nez v7, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_9

    invoke-interface {v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v10, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_4

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_5

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const-string/jumbo v11, "type"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_4

    const-string/jumbo v11, "snow"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    new-instance v8, Lcom/android/systemui/wallpaper/theme/view/SnowView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v8, v11}, Lcom/android/systemui/wallpaper/theme/view/SnowView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v7, v8, v12, v12}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_6
    const-string/jumbo v11, "rain"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_7

    new-instance v6, Lcom/android/systemui/wallpaper/theme/view/RainView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v6, v11}, Lcom/android/systemui/wallpaper/theme/view/RainView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v7, v6, v12, v12}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_7
    const-string/jumbo v11, "leaf"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_8

    new-instance v4, Lcom/android/systemui/wallpaper/theme/view/LeafView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v4, v11}, Lcom/android/systemui/wallpaper/theme/view/LeafView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v7, v4, v12, v12}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_8
    const-string/jumbo v11, "flower"

    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    new-instance v2, Lcom/android/systemui/wallpaper/theme/view/FlowerView;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v2, v11}, Lcom/android/systemui/wallpaper/theme/view/FlowerView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addScene(Lcom/android/systemui/wallpaper/theme/LockscreenCallback;)V

    invoke-virtual {v7, v2, v12, v12}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    goto :goto_1

    :cond_9
    return-void
.end method
