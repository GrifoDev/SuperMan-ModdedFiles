.class Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;
.super Landroid/os/AsyncTask;
.source "SecNavigationBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/SecNavigationBarView;->sendLogBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$cv:Landroid/content/ContentValues;

.field final synthetic val$pkName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/SecNavigationBarView;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->this$0:Lcom/android/systemui/statusbar/phone/SecNavigationBarView;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$cv:Landroid/content/ContentValues;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$pkName:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$action:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "data"

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$cv:Landroid/content/ContentValues;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$pkName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SecNavigationBarView$2;->val$context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v1, 0x0

    return-object v1
.end method
