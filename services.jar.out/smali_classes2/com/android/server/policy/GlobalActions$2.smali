.class Lcom/android/server/policy/GlobalActions$2;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$2;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/GlobalActions;->airplaneModeClickAction(Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-set5(Z)Z

    return-void
.end method
