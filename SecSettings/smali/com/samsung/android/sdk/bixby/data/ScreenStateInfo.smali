.class public Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
.super Ljava/lang/Object;
.source "ScreenStateInfo.java"


# static fields
.field public static final STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;


# instance fields
.field mCallerAppName:Ljava/lang/String;

.field mStateList:Ljava/util/LinkedHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->STATE_NOT_APPLICABLE:Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, ""

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mCallerAppName:Ljava/lang/String;

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The input parameter is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public addState(Ljava/lang/String;)Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "The input parameter is null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    return-object p0

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "The screen parameter name is duplicated. "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getStates()Ljava/util/LinkedHashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mCallerAppName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :goto_0
    const-string/jumbo v3, "\"stateIds\":["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    if-nez v3, :cond_2

    :cond_0
    return-object v5

    :cond_1
    const-string/jumbo v3, "\"callerAppName\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mCallerAppName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->size()I

    move-result v3

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/sdk/bixby/data/ScreenStateInfo;->mStateList:Ljava/util/LinkedHashSet;

    invoke-virtual {v3}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
