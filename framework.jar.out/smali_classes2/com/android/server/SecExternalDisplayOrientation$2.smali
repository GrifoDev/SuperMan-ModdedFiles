.class Lcom/android/server/SecExternalDisplayOrientation$2;
.super Landroid/database/ContentObserver;
.source "SecExternalDisplayOrientation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SecExternalDisplayOrientation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SecExternalDisplayOrientation;


# direct methods
.method constructor <init>(Lcom/android/server/SecExternalDisplayOrientation;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/SecExternalDisplayOrientation$2;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/SecExternalDisplayOrientation;->bIsLogEnabled:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SecExternalDisplayOrientation_Java"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSidesyncContentObserver onChange + selfChange="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/SecExternalDisplayOrientation$2;->this$0:Lcom/android/server/SecExternalDisplayOrientation;

    invoke-static {v0}, Lcom/android/server/SecExternalDisplayOrientation;->-wrap0(Lcom/android/server/SecExternalDisplayOrientation;)V

    return-void
.end method
