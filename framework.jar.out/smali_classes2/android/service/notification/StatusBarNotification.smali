.class public Landroid/service/notification/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/notification/StatusBarNotification$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private groupKey:Ljava/lang/String;

.field private final id:I

.field private final initialPid:I

.field private final key:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private final notification:Landroid/app/Notification;

.field private final opPkg:Ljava/lang/String;

.field private overrideGroupKey:Ljava/lang/String;

.field private final pkg:Ljava/lang/String;

.field private final postTime:J

.field private final tag:Ljava/lang/String;

.field private final uid:I

.field private final user:Landroid/os/UserHandle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/service/notification/StatusBarNotification$1;

    invoke-direct {v0}, Landroid/service/notification/StatusBarNotification$1;-><init>()V

    sput-object v0, Landroid/service/notification/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-static {p1}, Landroid/os/UserHandle;->readFromParcel(Landroid/os/Parcel;)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    :goto_1
    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-void

    :cond_0
    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IIILandroid/app/Notification;Landroid/os/UserHandle;J)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p8, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-nez p7, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iput-object p2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iput p3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iput-object p4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iput p5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iput p6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iput-object p7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iput-object p8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iput-wide p10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    iput-object p9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->key()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-void
.end method

.method private groupKey()Ljava/lang/String;
    .locals 5

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "g:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v1

    if-nez v0, :cond_1

    if-nez v1, :cond_1

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v2

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-nez v0, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "c:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v4}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "g:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private key()Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public clone()Landroid/service/notification/StatusBarNotification;
    .locals 12

    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget-object v7, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v7}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v7

    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->clone()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public cloneLight()Landroid/service/notification/StatusBarNotification;
    .locals 12

    new-instance v7, Landroid/app/Notification;

    invoke-direct {v7}, Landroid/app/Notification;-><init>()V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v1, 0x0

    invoke-virtual {v0, v7, v1}, Landroid/app/Notification;->cloneInto(Landroid/app/Notification;Z)V

    new-instance v0, Landroid/service/notification/StatusBarNotification;

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    iget v3, p0, Landroid/service/notification/StatusBarNotification;->id:I

    iget-object v4, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    iget v5, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    iget v6, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    iget-object v8, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    iget-object v9, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    iget-wide v10, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-direct/range {v0 .. v11}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getGroup()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGroupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    return v0
.end method

.method public getInitialPid()I
    .locals 1

    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    return v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getNotification()Landroid/app/Notification;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    return-object v0
.end method

.method public getOpPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getOverrideGroupKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 7

    const/4 v6, 0x0

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    const/16 v5, 0x2000

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->createApplicationContext(Landroid/content/pm/ApplicationInfo;I)Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    if-nez v2, :cond_2

    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    :cond_2
    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    return-object v2

    :catch_0
    move-exception v1

    iput-object v6, p0, Landroid/service/notification/StatusBarNotification;->mContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getPostTime()J
    .locals 2

    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    return-wide v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    return v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    return-object v0
.end method

.method public getUserId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    return v0
.end method

.method public isAppGroup()Z
    .locals 1

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isClearable()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x20

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isGroup()Z
    .locals 1

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isAppGroup()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isOngoing()Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public setOverrideGroupKey(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-direct {p0}, Landroid/service/notification/StatusBarNotification;->groupKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/notification/StatusBarNotification;->groupKey:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const-string/jumbo v0, "StatusBarNotification(pkg=%s user=%s id=%d tag=%s key=%s: %s)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iget v2, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->key:Ljava/lang/String;

    const/4 v3, 0x4

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    const/4 v3, 0x5

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->opPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_0
    iget v0, p0, Landroid/service/notification/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/service/notification/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, p2}, Landroid/os/UserHandle;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Landroid/service/notification/StatusBarNotification;->postTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {p1, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/service/notification/StatusBarNotification;->overrideGroupKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
