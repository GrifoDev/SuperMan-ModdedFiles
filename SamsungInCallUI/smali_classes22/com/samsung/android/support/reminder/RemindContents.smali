.class public Lcom/samsung/android/support/reminder/RemindContents;
.super Ljava/lang/Object;
.source "RemindContents.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ATTACH_FILE_TYPE_ETC:I = 0x64
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTACH_FILE_TYPE_MUSIC:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTACH_FILE_TYPE_NONE:I = 0x0

.field public static final ATTACH_FILE_TYPE_VIDEO:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ATTACH_FILE_TYPE_VOICE:I = 0x1

.field public static final CARD_TYPE_BROWSER:I = 0x4

.field public static final CARD_TYPE_CALL:I = 0x1

.field public static final CARD_TYPE_EMAIL:I = 0x5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CARD_TYPE_IMAGE:I = 0x7

.field public static final CARD_TYPE_MEMO:I = 0x3

.field public static final CARD_TYPE_MESSAGE:I = 0x2

.field public static final CARD_TYPE_NOT_SET:I = 0x0

.field public static final CARD_TYPE_TEXT:I = 0x6

.field public static final CARD_TYPE_VOICE:I = 0x8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/support/reminder/RemindContents;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_ACTIONS:I = 0x3


# instance fields
.field public attachedFilePath:Ljava/lang/String;

.field public attachedFileType:I

.field public cardType:I

.field public contactId:J

.field public contentIntent:Landroid/content/Intent;

.field public contentTimeStamp:J

.field public imagePath:Ljava/lang/String;

.field private mActions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/reminder/Action;",
            ">;"
        }
    .end annotation
.end field

.field public subText:Ljava/lang/String;

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 147
    new-instance v0, Lcom/samsung/android/support/reminder/RemindContents$1;

    invoke-direct {v0}, Lcom/samsung/android/support/reminder/RemindContents$1;-><init>()V

    sput-object v0, Lcom/samsung/android/support/reminder/RemindContents;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->attachedFileType:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->attachedFileType:I

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->cardType:I

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->title:Ljava/lang/String;

    .line 164
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->text:Ljava/lang/String;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->subText:Ljava/lang/String;

    .line 166
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->url:Ljava/lang/String;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->contactId:J

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->contentTimeStamp:J

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->attachedFileType:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->attachedFilePath:Ljava/lang/String;

    .line 171
    const-class v0, Landroid/content/Intent;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    iput-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->contentIntent:Landroid/content/Intent;

    .line 173
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 174
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    sget-object v1, Lcom/samsung/android/support/reminder/Action;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 175
    return-void
.end method


# virtual methods
.method public addAction(Lcom/samsung/android/support/reminder/Action;)V
    .locals 1
    .param p1, "action"    # Lcom/samsung/android/support/reminder/Action;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getActions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/support/reminder/Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 179
    iget v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->cardType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 182
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->subText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 184
    iget-wide v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->contactId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 185
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 186
    iget-wide v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->contentTimeStamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 187
    iget v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->attachedFileType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->attachedFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->contentIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 190
    iget-object v0, p0, Lcom/samsung/android/support/reminder/RemindContents;->mActions:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 191
    return-void
.end method
