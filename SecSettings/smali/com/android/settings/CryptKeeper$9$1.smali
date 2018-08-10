.class Lcom/android/settings/CryptKeeper$9$1;
.super Ljava/lang/Object;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper$9;->onPostExecute(Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/CryptKeeper$9;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper$9;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const-string/jumbo v0, "CryptKeeper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onClick() mClickCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    iget-object v2, v2, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v2}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    iget-object v0, v0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    iget-object v0, v0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-get2(Lcom/android/settings/CryptKeeper;)I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_0

    invoke-static {}, Lcom/android/settings/CryptKeeper;->-get17()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    iget-object v0, v0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->-wrap3(Lcom/android/settings/CryptKeeper;)Z

    iget-object v0, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    iget-object v0, v0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->-set1(Lcom/android/settings/CryptKeeper;I)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$9$1;->this$1:Lcom/android/settings/CryptKeeper$9;

    iget-object v0, v0, Lcom/android/settings/CryptKeeper$9;->this$0:Lcom/android/settings/CryptKeeper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/CryptKeeper;->-wrap10(Lcom/android/settings/CryptKeeper;Z)V

    goto :goto_0
.end method
