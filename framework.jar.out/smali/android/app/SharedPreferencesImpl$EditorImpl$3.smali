.class Landroid/app/SharedPreferencesImpl$EditorImpl$3;
.super Ljava/lang/Object;
.source "SharedPreferencesImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/SharedPreferencesImpl$EditorImpl;->notifyListeners(Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

.field final synthetic val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;


# direct methods
.method constructor <init>(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V
    .locals 0
    .param p1, "this$1"    # Landroid/app/SharedPreferencesImpl$EditorImpl;
    .param p2, "val$mcr"    # Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    .prologue
    .line 485
    iput-object p1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$3;->this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iput-object p2, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$3;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 487
    iget-object v0, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$3;->this$1:Landroid/app/SharedPreferencesImpl$EditorImpl;

    iget-object v1, p0, Landroid/app/SharedPreferencesImpl$EditorImpl$3;->val$mcr:Landroid/app/SharedPreferencesImpl$MemoryCommitResult;

    invoke-static {v0, v1}, Landroid/app/SharedPreferencesImpl$EditorImpl;->-wrap0(Landroid/app/SharedPreferencesImpl$EditorImpl;Landroid/app/SharedPreferencesImpl$MemoryCommitResult;)V

    .line 486
    return-void
.end method
