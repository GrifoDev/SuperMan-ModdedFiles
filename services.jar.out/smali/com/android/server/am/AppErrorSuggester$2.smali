.class Lcom/android/server/am/AppErrorSuggester$2;
.super Ljava/lang/Object;
.source "AppErrorSuggester.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/AppErrorSuggester;->showWebView32bitErrorDialog(Lcom/android/server/am/ProcessRecord;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppErrorSuggester;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppErrorSuggester;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/AppErrorSuggester$2;->this$0:Lcom/android/server/am/AppErrorSuggester;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AppErrorSuggester$2;->this$0:Lcom/android/server/am/AppErrorSuggester;

    const-string/jumbo v1, "com.google.android.webview"

    invoke-static {v0, v1}, Lcom/android/server/am/AppErrorSuggester;->-wrap1(Lcom/android/server/am/AppErrorSuggester;Ljava/lang/String;)V

    return-void
.end method
