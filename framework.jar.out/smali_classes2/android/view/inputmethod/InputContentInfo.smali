.class public final Landroid/view/inputmethod/InputContentInfo;
.super Ljava/lang/Object;
.source "InputContentInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/InputContentInfo$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/view/inputmethod/InputContentInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mContentUri:Landroid/net/Uri;

.field private final mContentUriOwnerUserId:I

.field private final mDescription:Landroid/content/ClipDescription;

.field private final mLinkUri:Landroid/net/Uri;

.field private mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/view/inputmethod/InputContentInfo$1;

    invoke-direct {v0}, Landroid/view/inputmethod/InputContentInfo$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/InputContentInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {p1, p2, p3, v0}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->getUserIdFromUri(Landroid/net/Uri;I)I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    iput-object p2, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    iput-object p3, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    sget-object v0, Landroid/content/ClipDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipDescription;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/inputmethod/IInputContentUriToken;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/view/inputmethod/InputContentInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/view/inputmethod/InputContentInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_1

    if-eqz p3, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "contentUri"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    return v3

    :cond_1
    if-nez p1, :cond_3

    if-eqz p3, :cond_2

    new-instance v2, Ljava/lang/NullPointerException;

    const-string/jumbo v3, "description"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    return v3

    :cond_3
    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "content"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p3, :cond_4

    new-instance v2, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "contentUri must have content scheme"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    return v3

    :cond_5
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    const-string/jumbo v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    const-string/jumbo v2, "https"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_8

    :cond_6
    if-eqz p3, :cond_7

    new-instance v2, Ljava/security/InvalidParameterException;

    const-string/jumbo v3, "linkUri must have either http or https scheme"

    invoke-direct {v2, v3}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    return v3

    :cond_8
    const/4 v2, 0x1

    return v2
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContentUri()Landroid/net/Uri;
    .locals 2

    iget v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    iget v1, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    invoke-static {v0, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getDescription()Landroid/content/ClipDescription;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public getLinkUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    return-object v0
.end method

.method public releasePermission()V
    .locals 2

    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method public requestPermission()V
    .locals 2

    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-nez v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v1}, Lcom/android/internal/inputmethod/IInputContentUriToken;->take()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    goto :goto_0
.end method

.method setUriToken(Lcom/android/internal/inputmethod/IInputContentUriToken;)V
    .locals 2

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "URI token is already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    return-void
.end method

.method public validate()Z
    .locals 4

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    iget-object v1, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    iget-object v2, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/view/inputmethod/InputContentInfo;->validateInternal(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;Z)Z

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget v0, p0, Landroid/view/inputmethod/InputContentInfo;->mContentUriOwnerUserId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mDescription:Landroid/content/ClipDescription;

    invoke-virtual {v0, p1, p2}, Landroid/content/ClipDescription;->writeToParcel(Landroid/os/Parcel;I)V

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mLinkUri:Landroid/net/Uri;

    invoke-static {p1, v0}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;Landroid/net/Uri;)V

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/view/inputmethod/InputContentInfo;->mUriToken:Lcom/android/internal/inputmethod/IInputContentUriToken;

    invoke-interface {v0}, Lcom/android/internal/inputmethod/IInputContentUriToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
