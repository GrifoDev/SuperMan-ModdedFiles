.class public Lcom/android/server/pm/SecureStorageService;
.super Ljava/lang/Object;
.source "SecureStorageService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SecureStorageService"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSignDexFile(Ljava/lang/String;II)I
.end method

.method public static signDexFileInsideZip(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 4

    const/4 v0, 0x0

    const-string/jumbo v1, "SecureStorageService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Called signDexFileInsideZip primaryAbi="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "arm"

    if-ne p1, v1, :cond_0

    const/16 v1, 0x20

    invoke-static {p0, v1, p2}, Lcom/android/server/pm/SecureStorageService;->nativeSignDexFile(Ljava/lang/String;II)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/16 v1, 0x40

    invoke-static {p0, v1, p2}, Lcom/android/server/pm/SecureStorageService;->nativeSignDexFile(Ljava/lang/String;II)I

    move-result v0

    goto :goto_0
.end method
