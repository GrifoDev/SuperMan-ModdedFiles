.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityNotificationAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemContextActivityNotificationAttribute"


# instance fields
.field private mActivityFilter:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->setAttribute()V

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 3

    const/4 v0, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    if-eqz p1, :cond_0

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    iget-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([II[III)V

    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->setAttribute()V

    :goto_0
    return-void

    :cond_0
    const-string/jumbo v0, "SemContextActivityNotificationAttribute"

    const-string/jumbo v1, "The activityFilter is wrong."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setAttribute()V
    .locals 3

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "activity_filter"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    const/16 v1, 0x1b

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    if-nez v3, :cond_0

    return v5

    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    if-ltz v3, :cond_1

    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    :cond_1
    const-string/jumbo v3, "SemContextActivityNotificationAttribute"

    const-string/jumbo v4, "The activity status is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SemContextActivityNotificationAttribute"

    const-string/jumbo v4, "This activity status cannot have duplicated status."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    const/4 v3, 0x1

    return v3
.end method
