.class Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;
.super Ljava/lang/Object;
.source "OwnerInfo.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/lockscreen/OwnerInfo;->initView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-get2(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/EditText;->setEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/settings/lockscreen/OwnerInfo$1;->this$0:Lcom/samsung/android/settings/lockscreen/OwnerInfo;

    invoke-static {v0}, Lcom/samsung/android/settings/lockscreen/OwnerInfo;->-wrap0(Lcom/samsung/android/settings/lockscreen/OwnerInfo;)V

    return-void
.end method
