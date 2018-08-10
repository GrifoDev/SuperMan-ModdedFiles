.class public final Landroid/app/RecoverableSecurityException;
.super Ljava/lang/SecurityException;
.source "RecoverableSecurityException.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/RecoverableSecurityException$1;,
        Landroid/app/RecoverableSecurityException$LocalDialog;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/RecoverableSecurityException;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "RecoverableSecurityException"


# instance fields
.field private final mUserAction:Landroid/app/RemoteAction;

.field private final mUserMessage:Ljava/lang/CharSequence;


# direct methods
.method static synthetic -get0(Landroid/app/RecoverableSecurityException;)Landroid/app/RemoteAction;
    .locals 1

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/RecoverableSecurityException;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/RecoverableSecurityException$1;

    invoke-direct {v0}, Landroid/app/RecoverableSecurityException$1;-><init>()V

    sput-object v0, Landroid/app/RecoverableSecurityException;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    new-instance v1, Ljava/lang/SecurityException;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    sget-object v0, Landroid/app/RemoteAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    invoke-direct {p0, v1, v2, v0}, Landroid/app/RecoverableSecurityException;-><init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/RemoteAction;

    iput-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/app/RemoteAction;

    const-string/jumbo v1, "android"

    const v2, 0x10804e8

    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-direct {v0, v1, p3, p3, p4}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-direct {p0, p1, p2, v0}, Landroid/app/RecoverableSecurityException;-><init>(Ljava/lang/Throwable;Ljava/lang/CharSequence;Landroid/app/RemoteAction;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getUserAction()Landroid/app/RemoteAction;
    .locals 1

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    return-object v0
.end method

.method public getUserMessage()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public showAsDialog(Landroid/app/Activity;)V
    .locals 8

    new-instance v1, Landroid/app/RecoverableSecurityException$LocalDialog;

    invoke-direct {v1}, Landroid/app/RecoverableSecurityException$LocalDialog;-><init>()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v6, "RecoverableSecurityException"

    invoke-virtual {v0, v6, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v1, v0}, Landroid/app/RecoverableSecurityException$LocalDialog;->setArguments(Landroid/os/Bundle;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "RecoverableSecurityException_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v7}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v4}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    :cond_0
    invoke-virtual {v3, v1, v5}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void
.end method

.method public showAsNotification(Landroid/content/Context;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "RecoverableSecurityException_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Landroid/app/NotificationChannel;

    const-string/jumbo v3, "RecoverableSecurityException"

    const/4 v4, 0x3

    invoke-direct {v2, v0, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/RecoverableSecurityException;->showAsNotification(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public showAsNotification(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    const-class v2, Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification$Builder;

    invoke-direct {v2, p1, p2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v3, 0x10804e2

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v2

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v2

    const-string/jumbo v3, "err"

    invoke-virtual {v2, v3}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v2, "RecoverableSecurityException"

    iget-object v3, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v3}, Landroid/app/RemoteAction;->getActionIntent()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v3

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-virtual {p0}, Landroid/app/RecoverableSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserMessage:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/app/RecoverableSecurityException;->mUserAction:Landroid/app/RemoteAction;

    invoke-virtual {v0, p1, p2}, Landroid/app/RemoteAction;->writeToParcel(Landroid/os/Parcel;I)V

    return-void
.end method
