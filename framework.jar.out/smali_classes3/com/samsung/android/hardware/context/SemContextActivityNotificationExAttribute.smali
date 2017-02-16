.class public Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextActivityNotificationExAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final STATUS_MAX:I = 0x5

.field private static final TAG:Ljava/lang/String; = "SemContextActivityNotificationExAttribute"


# instance fields
.field private mActivityFilter:[I

.field private mDuration:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 58
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 57
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 66
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->setAttribute()V

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 58
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 57
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 72
    return-void
.end method

.method public constructor <init>([II)V
    .locals 3
    .param p1, "activityFilter"    # [I
    .param p2, "duration"    # I

    .prologue
    .line 94
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 57
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 58
    const/4 v1, 0x4

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 57
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 60
    const/16 v0, 0x1e

    iput v0, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 95
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    .line 96
    iput p2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->setAttribute()V

    .line 94
    return-void
.end method

.method private setAttribute()V
    .locals 3

    .prologue
    .line 133
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v1, "activity_filter"

    iget-object v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 135
    const-string/jumbo v1, "duration"

    iget v2, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    invoke-virtual {v0, v1, v2}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 136
    const/16 v1, 0x1e

    invoke-super {p0, v1, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 132
    return-void
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    if-nez v3, :cond_0

    return v5

    .line 107
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    array-length v3, v3

    if-ge v0, v3, :cond_5

    .line 109
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    if-ltz v3, :cond_1

    .line 110
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    const/4 v4, 0x5

    if-le v3, v4, :cond_2

    .line 111
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    const/16 v4, 0x1e

    if-eq v3, v4, :cond_2

    .line 112
    const-string/jumbo v3, "SemContextActivityNotificationExAttribute"

    const-string/jumbo v4, "The activity status is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v5

    .line 116
    :cond_2
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mActivityFilter:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_4

    .line 118
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 119
    const-string/jumbo v3, "SemContextActivityNotificationExAttribute"

    const-string/jumbo v4, "This activity status cannot have duplicated status."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return v5

    .line 117
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 108
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    .end local v1    # "j":I
    :cond_5
    iget v3, p0, Lcom/samsung/android/hardware/context/SemContextActivityNotificationExAttribute;->mDuration:I

    if-gez v3, :cond_6

    .line 126
    const-string/jumbo v3, "SemContextActivityNotificationExAttribute"

    const-string/jumbo v4, "The duration is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return v5

    .line 129
    :cond_6
    const/4 v3, 0x1

    return v3
.end method
