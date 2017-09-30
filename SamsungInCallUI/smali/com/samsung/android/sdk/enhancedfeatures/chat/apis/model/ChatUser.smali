.class public Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private chatid:J

.field private msisdn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser$1;

    invoke-direct {v0}, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser$1;-><init>()V

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->chatid:J

    iput-object p3, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->msisdn:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->chatid:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->msisdn:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChatId()J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->chatid:J

    return-wide v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->msisdn:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->chatid:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/samsung/android/sdk/enhancedfeatures/chat/apis/model/ChatUser;->msisdn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
