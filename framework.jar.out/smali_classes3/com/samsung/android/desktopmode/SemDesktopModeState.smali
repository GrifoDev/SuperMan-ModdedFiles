.class public Lcom/samsung/android/desktopmode/SemDesktopModeState;
.super Ljava/lang/Object;
.source "SemDesktopModeState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/desktopmode/SemDesktopModeState$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/desktopmode/SemDesktopModeState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DISABLED:I = 0x2

.field public static final DISABLING:I = 0x1

.field public static final ENABLED:I = 0x4

.field public static final ENABLING:I = 0x3

.field public static final STATE_BEFORE_CONFIG_CHANGE:I = 0x1e

.field public static final STATE_CONFIG_CHANGE_FINISHED:I = 0x32

.field public static final STATE_CONFIG_CHANGE_STARTED:I = 0x28

.field public static final STATE_LOADING_SCREEN_SHOWN:I = 0x14

.field public static final STATE_UNDEFINED:I = 0x0

.field public static final STATE_WELCOME_DIALOG_SHOWN:I = 0xa

.field private static final TAG:Ljava/lang/String;


# instance fields
.field public enabled:I

.field public state:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;

    invoke-direct {v0}, Lcom/samsung/android/desktopmode/SemDesktopModeState$1;-><init>()V

    sput-object v0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->update(II)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method public static enabledToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string/jumbo v0, "DISABLING"

    return-object v0

    :pswitch_1
    const-string/jumbo v0, "DISABLED"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "ENABLING"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "ENABLED"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 2

    sparse-switch p0, :sswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :sswitch_0
    const-string/jumbo v0, "STATE_UNDEFINED"

    return-object v0

    :sswitch_1
    const-string/jumbo v0, "STATE_WELCOME_DIALOG_SHOWN"

    return-object v0

    :sswitch_2
    const-string/jumbo v0, "STATE_LOADING_SCREEN_SHOWN"

    return-object v0

    :sswitch_3
    const-string/jumbo v0, "STATE_BEFORE_CONFIG_CHANGE"

    return-object v0

    :sswitch_4
    const-string/jumbo v0, "STATE_CONFIG_CHANGE_STARTED"

    return-object v0

    :sswitch_5
    const-string/jumbo v0, "STATE_CONFIG_CHANGE_FINISHED"

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x28 -> :sswitch_4
        0x32 -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public compareTo(II)Z
    .locals 2

    const/4 v0, 0x0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    if-ne v1, p1, :cond_0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    if-ne v1, p2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SemDesktopModeState(enabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabledToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-static {v1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(II)V
    .locals 0

    iput p1, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    iput p2, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Lcom/samsung/android/desktopmode/SemDesktopModeState;->state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
