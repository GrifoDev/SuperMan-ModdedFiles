.class public Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;
.super Lcom/samsung/android/hardware/context/SemContextAttribute;
.source "SemContextExerciseAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/hardware/context/SemContextExerciseAttribute$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private static final REQUIRED_DATA_BAROMETER:I = 0x2

.field private static final REQUIRED_DATA_GPS:I = 0x1

.field private static final REQUIRED_DATA_PEDOMETER:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SemContextExerciseAttribute"


# instance fields
.field private mRequiredDataType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    new-instance v0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute$1;

    invoke-direct {v0}, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute$1;-><init>()V

    sput-object v0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 71
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 64
    new-array v0, v2, [I

    .line 65
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 64
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    .line 72
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->setAttribute()V

    .line 71
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 79
    invoke-direct {p0, p1}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>(Landroid/os/Parcel;)V

    .line 64
    new-array v0, v2, [I

    .line 65
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 64
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    .line 78
    return-void
.end method

.method public constructor <init>([I)V
    .locals 3
    .param p1, "requiredDataType"    # [I

    .prologue
    const/4 v2, 0x1

    .line 97
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextAttribute;-><init>()V

    .line 64
    new-array v0, v2, [I

    .line 65
    const/4 v1, 0x0

    aput v2, v0, v1

    .line 64
    iput-object v0, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    .line 98
    iput-object p1, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    .line 99
    invoke-direct {p0}, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->setAttribute()V

    .line 97
    return-void
.end method

.method private setAttribute()V
    .locals 7

    .prologue
    .line 127
    const/4 v3, 0x0

    .line 128
    .local v3, "result":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    .local v4, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v5, "Required data type : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    array-length v5, v5

    if-ge v1, v5, :cond_1

    .line 131
    const/4 v2, 0x0

    .line 132
    .local v2, "required_data":I
    if-eqz v1, :cond_0

    .line 133
    const-string/jumbo v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    :cond_0
    iget-object v5, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    aget v5, v5, v1

    packed-switch v5, :pswitch_data_0

    .line 151
    :goto_1
    or-int/2addr v3, v2

    .line 130
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :pswitch_0
    const/4 v2, 0x1

    .line 138
    const-string/jumbo v5, "GPS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 141
    :pswitch_1
    const/4 v2, 0x2

    .line 142
    const-string/jumbo v5, "Barometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 145
    :pswitch_2
    const/4 v2, 0x4

    .line 146
    const-string/jumbo v5, "Pedometer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 153
    .end local v2    # "required_data":I
    :cond_1
    const-string/jumbo v5, "SemContextExerciseAttribute"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 155
    .local v0, "attribute":Landroid/os/Bundle;
    const-string/jumbo v5, "required_data_type"

    invoke-virtual {v0, v5, v3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 156
    const/16 v5, 0x28

    invoke-super {p0, v5, v0}, Lcom/samsung/android/hardware/context/SemContextAttribute;->setAttribute(ILandroid/os/Bundle;)V

    .line 126
    return-void

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public checkAttribute()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 108
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    array-length v3, v3

    if-ge v0, v3, :cond_4

    .line 110
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v0

    if-lt v3, v6, :cond_0

    .line 111
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v0

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    .line 112
    :cond_0
    const-string/jumbo v3, "SemContextExerciseAttribute"

    const-string/jumbo v4, "The required data type is wrong."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return v5

    .line 115
    :cond_1
    iget-object v3, p0, Lcom/samsung/android/hardware/context/SemContextExerciseAttribute;->mRequiredDataType:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 117
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const-string/jumbo v3, "SemContextExerciseAttribute"

    const-string/jumbo v4, "This required data type cannot have duplicated type."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return v5

    .line 116
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 109
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 123
    .end local v1    # "j":I
    :cond_4
    return v6
.end method
