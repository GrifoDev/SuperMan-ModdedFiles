.class Lcom/android/keyguard/KeyguardUpdateMonitor$LaunchSecureFolderIfNeeded;
.super Landroid/os/AsyncTask;
.source "KeyguardUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LaunchSecureFolderIfNeeded"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private fpId:I

.field final synthetic this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$LaunchSecureFolderIfNeeded;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$LaunchSecureFolderIfNeeded;->fpId:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$LaunchSecureFolderIfNeeded;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$LaunchSecureFolderIfNeeded;->fpId:I

    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->-wrap3(Lcom/android/keyguard/KeyguardUpdateMonitor;I)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$LaunchSecureFolderIfNeeded;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
