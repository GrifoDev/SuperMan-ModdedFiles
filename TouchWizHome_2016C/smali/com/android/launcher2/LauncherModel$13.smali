.class Lcom/android/launcher2/LauncherModel$13;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/LauncherModel;->deleteFestivalPage(Lcom/android/launcher2/Launcher;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/LauncherModel;

.field final synthetic val$app:Lcom/android/launcher2/Launcher;

.field final synthetic val$festivalAppWidgets:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel;Lcom/android/launcher2/Launcher;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$13;->this$0:Lcom/android/launcher2/LauncherModel;

    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$13;->val$app:Lcom/android/launcher2/Launcher;

    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$13;->val$festivalAppWidgets:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$13;->val$app:Lcom/android/launcher2/Launcher;

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$13;->val$festivalAppWidgets:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/android/launcher2/Launcher;->bindHomeDeleteFestivalPage(Ljava/util/List;)V

    return-void
.end method
