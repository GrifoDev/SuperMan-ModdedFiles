.class public Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;
.super Ljava/lang/Object;
.source "SemSmartClipMetaTag.java"


# instance fields
.field private mType:Ljava/lang/String;

.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mType:Ljava/lang/String;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/content/smartclip/SemSmartClipMetaTag;->mValue:Ljava/lang/String;

    return-void
.end method
