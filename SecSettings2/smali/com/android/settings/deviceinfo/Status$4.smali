.class Lcom/android/settings/deviceinfo/Status$4;
.super Landroid/os/Handler;
.source "Status.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/Status;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/Status;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/Status;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "handleMessage"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string/jumbo v1, "Status"

    const-string/jumbo v2, "USER_NAME_GET response incoming!!"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    const-string/jumbo v2, "response"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-set1([B)[B

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->-get2()[B

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->-get2()[B

    move-result-object v1

    array-length v1, v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string/jumbo v3, "user_name"

    invoke-virtual {v2, v3}, Lcom/android/settings/deviceinfo/Status;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/Status;->-set5(Lcom/android/settings/deviceinfo/Status;Landroid/preference/Preference;)Landroid/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->-get2()[B

    move-result-object v2

    aget-byte v2, v2, v4

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/Status;->-set0(Lcom/android/settings/deviceinfo/Status;I)I

    const-string/jumbo v1, "Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "NAI_length:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/Status;->-get1(Lcom/android/settings/deviceinfo/Status;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    const-string/jumbo v2, ""

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/Status;->-set6(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get1(Lcom/android/settings/deviceinfo/Status;)I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/settings/deviceinfo/Status;->-get2()[B

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    aget-byte v3, v3, v4

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/deviceinfo/Status;->-set6(Lcom/android/settings/deviceinfo/Status;Ljava/lang/String;)Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    const-string/jumbo v1, "Status"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "user_name:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v3}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get6(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    const-string/jumbo v2, "<Not set>"

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v1}, Lcom/android/settings/deviceinfo/Status;->-get6(Lcom/android/settings/deviceinfo/Status;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/Status$4;->this$0:Lcom/android/settings/deviceinfo/Status;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/Status;->-get7(Lcom/android/settings/deviceinfo/Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method
