.class public Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;
.super Ljava/lang/Object;
.source "HWRRMLanguageModel.java"


# instance fields
.field private mLatest:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mPreloaded:Ljava/lang/String;

.field private mVersion:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mVersion:Lcom/samsung/android/sdk/handwriting/resources/impl/HWRVersion;

    iput-object p3, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mPreloaded:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mLatest:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isLatest()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mLatest:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isPreloaded()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/sdk/handwriting/resources/impl/HWRRMLanguageModel;->mPreloaded:Ljava/lang/String;

    const-string/jumbo v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
