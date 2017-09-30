.class public final Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$MediaColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Media"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Content;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Outbox;,
        Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media$Inbox;
    }
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final MEDIA_BOX_ALL:I = 0x0

.field public static final MEDIA_BOX_INBOX:I = 0x1

.field public static final MEDIA_BOX_OUTBOX:I = 0x2

.field public static final STATUS_CANCELED:I = 0xc9

.field public static final STATUS_DOWNLOADED:I = 0x65

.field public static final STATUS_ON_PROGRESS:I = 0x64

.field public static final STATUS_PAUSED:I = 0x12c

.field public static final STATUS_PREPARING:I = 0x0

.field public static final STATUS_SHARED:I = 0xc8

.field public static final STATUS_UNEXPECTED_ERROR:I = 0x191

.field public static final STATUS_UPLOADED:I = 0x65


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.coreapps.rshare/media"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/sdk/enhancedfeatures/rshare/internal/RShare$Media;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
