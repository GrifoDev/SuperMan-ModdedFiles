.class Lcom/android/launcher2/LauncherModel$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->startLoader(ZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$forceRefresh:Z

.field final synthetic val$isFestivalLoader:Z

.field final synthetic val$isLaunchRequired:Z

.field final synthetic val$isModeChanged:Z


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;ZZZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-boolean p2, p0, Lcom/android/launcher2/LauncherModel$13;->val$isLaunchRequired:Z

    iput-boolean p3, p0, Lcom/android/launcher2/LauncherModel$13;->val$forceRefresh:Z

    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$13;->val$isModeChanged:Z

    iput-boolean p5, p0, Lcom/android/launcher2/LauncherModel$13;->val$isFestivalLoader:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$13;->val$isLaunchRequired:Z

    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$13;->val$forceRefresh:Z

    iget-boolean v3, p0, Lcom/android/launcher2/LauncherModel$13;->val$isModeChanged:Z

    iget-boolean v4, p0, Lcom/android/launcher2/LauncherModel$13;->val$isFestivalLoader:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;ZZZZ)V

    return-void
.end method
