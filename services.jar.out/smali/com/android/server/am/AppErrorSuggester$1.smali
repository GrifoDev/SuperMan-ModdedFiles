.class Lcom/android/server/am/AppErrorSuggester$1;
.super Ljava/lang/Object;
.source "AppErrorSuggester.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorSuggester;->showPermissionErrorDialog(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorSuggester;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorSuggester;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrorSuggester$1;->this$0:Lcom/android/server/am/AppErrorSuggester;

    iput-object p2, p0, Lcom/android/server/am/AppErrorSuggester$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrorSuggester$1;->this$0:Lcom/android/server/am/AppErrorSuggester;

    iget-object v1, p0, Lcom/android/server/am/AppErrorSuggester$1;->val$packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/AppErrorSuggester;->-wrap0(Lcom/android/server/am/AppErrorSuggester;Ljava/lang/String;)V

    return-void
.end method
