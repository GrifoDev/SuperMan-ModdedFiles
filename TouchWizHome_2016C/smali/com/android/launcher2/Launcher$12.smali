.class Lcom/android/launcher2/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Launcher;->setWallpaperRotation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Launcher;

.field final synthetic val$Value:I


# direct methods
.method constructor <init>(Lcom/android/launcher2/Launcher;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    iput p2, p0, Lcom/android/launcher2/Launcher$12;->val$Value:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/Launcher$12;->this$0:Lcom/android/launcher2/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher2/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher2/Launcher$12;->val$Value:I

    invoke-static {v0, v1}, Lcom/android/launcher2/ar/WallpaperRotionHelper;->sendEnableRotateCommand(Landroid/content/Context;I)V

    return-void
.end method
