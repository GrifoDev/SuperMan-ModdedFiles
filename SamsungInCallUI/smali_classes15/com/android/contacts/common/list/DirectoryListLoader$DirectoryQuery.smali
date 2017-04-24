.class final Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;
.super Ljava/lang/Object;
.source "DirectoryListLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/contacts/common/list/DirectoryListLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DirectoryQuery"
.end annotation


# static fields
.field public static final DISPLAY_NAME:I = 0x3

.field public static final ID:I = 0x0

.field public static final ORDER_BY:Ljava/lang/String; = "_id"

.field public static final PACKAGE_NAME:I = 0x1

.field public static final PHOTO_SUPPORT:I = 0x4

.field public static final PROJECTION:[Ljava/lang/String;

.field public static final TYPE_RESOURCE_ID:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "packageName"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "typeResourceId"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "displayName"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "photoSupport"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/common/list/DirectoryListLoader$DirectoryQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectoryUri(I)Landroid/net/Uri;
    .locals 1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_1

    :cond_0
    sget-object v0, Landroid/provider/ContactsContract$Directory;->CONTENT_URI:Landroid/net/Uri;

    :goto_0
    return-object v0

    :cond_1
    invoke-static {}, Lcom/android/contacts/common/compat/DirectoryCompat;->getContentUri()Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method
