.class public Lcom/samsung/android/share/executor/data/ParamFilling;
.super Ljava/lang/Object;
.source "ParamFilling.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/share/executor/data/ParamFilling$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/ParamFilling;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field appName:Ljava/lang/String;

.field intent:Ljava/lang/String;

.field mScreenParameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation
.end field

.field screenStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field utterance:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/share/executor/data/ParamFilling$1;

    invoke-direct {v0}, Lcom/samsung/android/share/executor/data/ParamFilling$1;-><init>()V

    sput-object v0, Lcom/samsung/android/share/executor/data/ParamFilling;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->utterance:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->intent:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->appName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/share/executor/data/ScreenParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->utterance:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->intent:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->appName:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    iput-object p5, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/share/executor/data/ParamFilling;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/share/executor/data/ParamFilling;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenParamMap()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iget-object v3, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/share/executor/data/ScreenParameter;

    invoke-virtual {v0}, Lcom/samsung/android/share/executor/data/ScreenParameter;->getParameterName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public getScreenParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    return-object v0
.end method

.method public getScreenStates()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    return-object v0
.end method

.method public getUtterance()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->utterance:Ljava/lang/String;

    return-object v0
.end method

.method public setAppName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->appName:Ljava/lang/String;

    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->intent:Ljava/lang/String;

    return-void
.end method

.method public setScreenParameters(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/share/executor/data/ScreenParameter;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    return-void
.end method

.method public setScreenStates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    return-void
.end method

.method public setUtterance(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->utterance:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->utterance:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->intent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->appName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->screenStates:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    iget-object v0, p0, Lcom/samsung/android/share/executor/data/ParamFilling;->mScreenParameters:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
