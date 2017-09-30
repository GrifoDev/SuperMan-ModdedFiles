.class public Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;
.super Ljava/lang/Object;


# instance fields
.field private meta_key:Ljava/lang/String;

.field private only_once:Z

.field private value:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetaKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->meta_key:Ljava/lang/String;

    return-object v0
.end method

.method public getOnlyOnce()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->only_once:Z

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->value:I

    return v0
.end method

.method public setMetaKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->meta_key:Ljava/lang/String;

    return-void
.end method

.method public setOnlyOnce(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->only_once:Z

    return-void
.end method

.method public setValue(I)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/social/apis/request/MetaCounterRequest;->value:I

    return-void
.end method
