.class Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;
.super Ljava/lang/Object;
.source "LedCoverCallerIDList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ContactInfo"
.end annotation


# instance fields
.field private checked:Z

.field private contact_id:Ljava/lang/String;

.field private data15:[B

.field private display_name:Ljava/lang/String;

.field final synthetic this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->contact_id:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->display_name:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    return-void
.end method


# virtual methods
.method public getChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->checked:Z

    return v0
.end method

.method public getID()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->contact_id:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->this$0:Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;

    invoke-virtual {v2}, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object v1

    return-object v1

    :cond_0
    return-object v2
.end method

.method public getIconBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    iget-object v2, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->data15:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v2
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->display_name:Ljava/lang/String;

    return-object v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/settings/accessories/LedCoverCallerIDList$ContactInfo;->checked:Z

    return-void
.end method
