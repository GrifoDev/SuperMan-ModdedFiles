.class public Lcom/samsung/android/share/executor/data/State;
.super Ljava/lang/Object;
.source "State.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/State$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/State;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private appName:Ljava/lang/String;

.field private isExecuted:Ljava/lang/Boolean;

.field private isLandingState:Ljava/lang/Boolean;

.field private isLastState:Ljava/lang/Boolean;

.field private parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private ruleId:Ljava/lang/String;

.field private seqNum:Ljava/lang/Integer;

.field private specVer:Ljava/lang/String;

.field private stateId:Ljava/lang/String;

.field private subIntent:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/share/executor/data/State$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/State$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/State;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    sget-object v0, Lcom/samsung/android/share/executor/data/Parameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "1.0"

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    iput-object p4, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    iput-object p7, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    iput-object p8, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    iput-object p9, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    iput-object p10, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getParamMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/data/Parameter;

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/Parameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    return-object v0
.end method

.method public getRuleId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    return-object v0
.end method

.method public getSeqNum()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    return-object v0
.end method

.method public getStateId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    return-object v0
.end method

.method public isExecuted()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLandingState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public isLastState()Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    return-void
.end method

.method public setExecuted(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    return-void
.end method

.method public setLandingState(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    return-void
.end method

.method public setLastState(Ljava/lang/Boolean;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    return-void
.end method

.method public setParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/Parameter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    return-void
.end method

.method public setRuleId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    return-void
.end method

.method public setSeqNum(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    return-void
.end method

.method public setStateId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    return-void
.end method

.method public setSubIntent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->specVer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->seqNum:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isExecuted:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->ruleId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->stateId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLandingState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->isLastState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->subIntent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/State;->parameters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method
