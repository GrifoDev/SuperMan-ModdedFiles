.class public Lcom/samsung/android/support/reminder/Action;
.super Ljava/lang/Object;
.source "Action.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ACTION_ID_CALL:I = 0x4

.field public static final ACTION_ID_FORWARD:I = 0x3

.field public static final ACTION_ID_MESSAGE:I = 0x1

.field public static final ACTION_ID_NONE:I = 0x0

.field public static final ACTION_ID_REPLY:I = 0x2

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/reminder/Action;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public actionId:I

.field public icon:I

.field public intent:Landroid/content/Intent;

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    new-instance v0, Lcom/samsung/android/support/reminder/Action$1;

    invoke-direct {v0}, Lcom/samsung/android/support/reminder/Action$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/reminder/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 105
    return-void
.end method

.method public constructor <init>(ILandroid/content/Intent;)V
    .locals 1
    .param p1, "actionId"    # I
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->icon:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->actionId:I

    .line 68
    iput p1, p0, Lcom/samsung/android/support/reminder/Action;->actionId:I

    .line 69
    iput-object p2, p0, Lcom/samsung/android/support/reminder/Action;->intent:Landroid/content/Intent;

    .line 70
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Landroid/content/Intent;)V
    .locals 1
    .param p1, "icon"    # I
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->icon:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->actionId:I

    .line 81
    iput p1, p0, Lcom/samsung/android/support/reminder/Action;->icon:I

    .line 82
    iput-object p2, p0, Lcom/samsung/android/support/reminder/Action;->title:Ljava/lang/String;

    .line 83
    iput-object p3, p0, Lcom/samsung/android/support/reminder/Action;->intent:Landroid/content/Intent;

    .line 84
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->icon:I

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->actionId:I

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->actionId:I

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/Action;->icon:I

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/Action;->title:Ljava/lang/String;

    .line 90
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/support/reminder/Action;->intent:Landroid/content/Intent;

    .line 91
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 114
    iget v0, p0, Lcom/samsung/android/support/reminder/Action;->actionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/samsung/android/support/reminder/Action;->icon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget-object v0, p0, Lcom/samsung/android/support/reminder/Action;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/samsung/android/support/reminder/Action;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 118
    return-void
.end method
