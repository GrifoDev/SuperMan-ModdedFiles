.class Lcom/android/internal/app/ResolverActivity$4;
.super Ljava/lang/Object;
.source "ResolverActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ResolverActivity;->onTargetSelected(Lcom/android/internal/app/ResolverActivity$TargetInfo;Z)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivity;

.field final synthetic val$target:Lcom/android/internal/app/ResolverActivity$TargetInfo;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iput-object p2, p0, Lcom/android/internal/app/ResolverActivity$4;->val$target:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    iget-object v1, p0, Lcom/android/internal/app/ResolverActivity$4;->val$target:Lcom/android/internal/app/ResolverActivity$TargetInfo;

    invoke-static {v0, v1}, Lcom/android/internal/app/ResolverActivity;->-wrap5(Lcom/android/internal/app/ResolverActivity;Lcom/android/internal/app/ResolverActivity$TargetInfo;)V

    iget-object v0, p0, Lcom/android/internal/app/ResolverActivity$4;->this$0:Lcom/android/internal/app/ResolverActivity;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivity;->finish()V

    :cond_0
    return-void
.end method
