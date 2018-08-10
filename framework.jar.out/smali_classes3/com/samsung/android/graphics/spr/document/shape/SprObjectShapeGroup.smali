.class public Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
.super Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
.source "SprObjectShapeGroup.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SPRObjectShapeGroup"


# instance fields
.field private mIsInitialized:Z

.field private final mIsRoot:Z

.field private mObjectList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    return-void
.end method

.method public constructor <init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    return-void
.end method

.method public constructor <init>(ZLorg/xmlpull/v1/XmlPullParser;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;-><init>(B)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    iput-boolean p1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    invoke-virtual {p0, p2}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method


# virtual methods
.method public appendObject(ILcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRObjectShapeGroup"

    const-string/jumbo v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public appendObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRObjectShapeGroup"

    const-string/jumbo v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-object v3, v2, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->clone()Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    move-result-object v0

    return-object v0
.end method

.method public draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V
    .locals 8

    const/16 v1, 0x1f

    invoke-virtual {p2, v1}, Landroid/graphics/Canvas;->save(I)I

    iget v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->alpha:F

    mul-float v5, p5, v1

    iget-object v1, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0, p1, p2, v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->applyAttribute(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;F)V

    :cond_0
    const/4 v0, 0x0

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v7

    :goto_0
    if-ge v6, v7, :cond_2

    invoke-virtual {p0, v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->draw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Canvas;FFF)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->finalize()V

    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    return-void
.end method

.method public fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0x3032

    const/16 v9, 0x3030

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readByte()B

    move-result v5

    const/4 v4, 0x0

    iget-short v6, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    if-lt v6, v9, :cond_0

    iget-short v6, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    if-lt v6, v10, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->readInt()I

    move-result v4

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v2

    sparse-switch v5, :sswitch_data_0

    const-string/jumbo v6, "SPRObjectShapeGroup"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unknown element type:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    int-to-long v6, v4

    invoke-virtual {p1, v6, v7}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->skip(J)J

    :goto_1
    iget-short v6, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMajorVersion:S

    if-lt v6, v9, :cond_1

    iget-short v6, p1, Lcom/samsung/android/graphics/spr/document/SprInputStream;->mMinorVersion:S

    if-lt v6, v10, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/graphics/spr/document/SprInputStream;->getPosition()J

    move-result-wide v6

    sub-long v2, v6, v2

    int-to-long v6, v4

    cmp-long v6, v2, v6

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Wrong skip size : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_0
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v8, 0x0

    invoke-direct {v7, v8, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_1
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;

    invoke-direct {v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeCircle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_2
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;

    invoke-direct {v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeEllipse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_3
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;

    invoke-direct {v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeLine;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_4
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_5
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;

    invoke-direct {v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeRectangle;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :sswitch_6
    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v7, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;

    invoke-direct {v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeUse;-><init>(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-boolean v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v6, :cond_3

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->fromSPR(Lcom/samsung/android/graphics/spr/document/SprInputStream;)V

    :cond_3
    return-void

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x10 -> :sswitch_0
        0x11 -> :sswitch_6
    .end sparse-switch
.end method

.method public fromXml(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_2

    invoke-interface {p1, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v5, "name"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string/jumbo v5, "rotation"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "pivotX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "pivotY"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "translateX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "translateX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "scaleX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "scaleX"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string/jumbo v5, "alpha"

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    :goto_2
    const/4 v5, 0x1

    if-eq v0, v5, :cond_7

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    if-ne v0, v5, :cond_6

    const-string/jumbo v5, "group"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    const/4 v7, 0x0

    invoke-direct {v6, v7, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;-><init>(ZLorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_2

    :cond_4
    const-string/jumbo v5, "path"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    new-instance v6, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;

    invoke-direct {v6, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapePath;-><init>(Lorg/xmlpull/v1/XmlPullParser;)V

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    const-string/jumbo v5, "clip-path"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_3

    :cond_6
    const/4 v5, 0x3

    if-ne v0, v5, :cond_3

    const-string/jumbo v5, "group"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_7
    return-void
.end method

.method public getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRObjectShapeGroup"

    const-string/jumbo v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public getObjectCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRObjectShapeGroup"

    const-string/jumbo v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getSPRSize()I
    .locals 4

    const/4 v2, 0x4

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeBase;->getSPRSize()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-boolean v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v3, :cond_1

    invoke-super {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v3

    add-int/2addr v2, v3

    :cond_1
    return v2
.end method

.method public getTotalAttributeCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalAttributeCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mAttributeList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/2addr v3, v2

    return v3
.end method

.method public getTotalElementCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalElementCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public getTotalSegmentCount()I
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getTotalSegmentCount()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    return v2
.end method

.method public preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V
    .locals 9

    invoke-super/range {p0 .. p6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    const/4 v0, 0x0

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObjectCount()I

    move-result v8

    :goto_0
    if-ge v7, v8, :cond_1

    invoke-virtual {p0, v7}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->getObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->strokePaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->fillPaint:Landroid/graphics/Paint;

    iget-boolean v4, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->isVisibleStroke:Z

    iget-boolean v5, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->isVisibleFill:Z

    iget-object v6, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->shadow:Lcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->preDraw(Lcom/samsung/android/graphics/spr/document/SprDocument;Landroid/graphics/Paint;Landroid/graphics/Paint;ZZLcom/samsung/android/graphics/spr/document/attribute/SprAttributeShadow;)V

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeObject(I)Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "SPRObjectShapeGroup"

    const-string/jumbo v1, "Already finalize"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    return-object v0
.end method

.method public removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z
    .locals 4

    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsInitialized:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "SPRObjectShapeGroup"

    const-string/jumbo v3, "Already finalize"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return v2

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    const/16 v3, 0x10

    if-ne v2, v3, :cond_1

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->removeObject(Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    return v2

    :cond_2
    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method public toSPR(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    iget-object v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mObjectList:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;

    iget-byte v2, v0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->mType:B

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->getSPRSize()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/samsung/android/graphics/spr/document/shape/SprObjectShapeGroup;->mIsRoot:Z

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Lcom/samsung/android/graphics/spr/document/shape/SprObjectBase;->toSPR(Ljava/io/DataOutputStream;)V

    :cond_1
    return-void
.end method
