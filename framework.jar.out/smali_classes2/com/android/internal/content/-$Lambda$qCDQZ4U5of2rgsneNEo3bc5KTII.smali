.class final synthetic Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/ParcelFileDescriptor$OnCloseListener;


# instance fields
.field private final synthetic -$f0:Ljava/lang/Object;

.field private final synthetic -$f1:Ljava/lang/Object;


# direct methods
.method private final synthetic $m$0(Ljava/io/IOException;)V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;->-$f0:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/content/FileSystemProvider;

    iget-object v1, p0, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;->-$f1:Ljava/lang/Object;

    check-cast v1, Ljava/io/File;

    invoke-virtual {v0, v1, p1}, Lcom/android/internal/content/FileSystemProvider;->lambda$-com_android_internal_content_FileSystemProvider_15148(Ljava/io/File;Ljava/io/IOException;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;->-$f0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;->-$f1:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClose(Ljava/io/IOException;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/content/-$Lambda$qCDQZ4U5of2rgsneNEo3bc5KTII;->$m$0(Ljava/io/IOException;)V

    return-void
.end method
