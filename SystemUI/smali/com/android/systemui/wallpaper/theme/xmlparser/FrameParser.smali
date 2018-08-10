.class public Lcom/android/systemui/wallpaper/theme/xmlparser/FrameParser;
.super Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;
.source "FrameParser.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/BaseParser;-><init>()V

    return-void
.end method


# virtual methods
.method protected parseAttribute(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V
    .locals 17

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getXpp()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v16

    if-nez v16, :cond_1

    return-void

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->isStartTag()Z

    move-result v2

    if-eqz v2, :cond_6

    new-instance v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    invoke-direct {v10}, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;-><init>()V

    invoke-interface/range {v16 .. v16}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v12

    const/4 v13, 0x0

    :goto_0
    if-ge v13, v12, :cond_5

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    move-object/from16 v0, v16

    invoke-interface {v0, v13}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    :goto_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_3
    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v15

    const-string/jumbo v2, "top"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v2

    iput v15, v2, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    goto :goto_1

    :cond_4
    const-string/jumbo v2, "minInterval"

    invoke-virtual {v14, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v2

    iput v15, v2, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    goto :goto_1

    :cond_5
    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->setAnimationBuilder(Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;)V

    :goto_2
    return-void

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;

    move-result-object v10

    if-nez v10, :cond_7

    return-void

    :cond_7
    new-instance v1, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getApkContext()Landroid/content/Context;

    move-result-object v2

    iget v3, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->backgroundId:I

    iget-object v4, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->imageViewSetId:Ljava/util/ArrayList;

    iget-object v5, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->frameSize:Ljava/util/ArrayList;

    iget-object v6, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->x:Ljava/util/ArrayList;

    iget-object v7, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->y:Ljava/util/ArrayList;

    iget-object v8, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->scale:Ljava/util/ArrayList;

    iget-object v9, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->startIndex:Ljava/util/ArrayList;

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iget v2, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->top:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;->setTop(I)V

    iget v2, v10, Lcom/android/systemui/wallpaper/theme/builder/AnimationBuilder;->minInterval:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;->setMinInterval(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v2

    if-eqz v2, :cond_8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v2

    if-nez v2, :cond_9

    :cond_8
    return-void

    :cond_9
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getRootView()Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;

    move-result-object v2

    const/4 v3, -0x2

    const/4 v4, -0x2

    invoke-virtual {v2, v1, v3, v4}, Lcom/android/systemui/wallpaper/KeyguardAnimatedWallpaper;->addView(Landroid/view/View;II)V

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;->getComplexAnimationBuilder()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->addSprite(Lcom/android/systemui/wallpaper/theme/view/FrameAnimationView;)V

    goto :goto_2
.end method
