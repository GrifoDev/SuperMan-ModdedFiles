.class Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;
.super Ljava/lang/Object;
.source "ContactInfoCache.java"

# interfaces
.implements Lcom/android/incallui/service/PhoneNumberService$NumberLookupListener;
.implements Lcom/android/incallui/service/PhoneNumberService$ImageLookupListener;
.implements Lcom/android/incallui/ContactUtils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/ContactInfoCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PhoneNumberServiceListener"
.end annotation


# instance fields
.field private final mCallId:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/incallui/ContactInfoCache;


# direct methods
.method constructor <init>(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onContactInteractionsFound(Landroid/location/Address;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/location/Address;",
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/util/Calendar;",
            "Ljava/util/Calendar;",
            ">;>;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-nez v0, :cond_1

    const-string v1, "Contact context received for empty search entry."

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingContactInteractions:Z

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    const-string v2, "Setting contact interactions for entry: "

    invoke-static {v1, v2, v0}, Lcom/android/incallui/Log;->v(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object p1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->locationAddress:Landroid/location/Address;

    iput-object p2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->openingHours:Ljava/util/List;

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/incallui/ContactInfoCache;->access$700(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-boolean v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingPhoto:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v2, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onImageFetchComplete(Landroid/graphics/Bitmap;)V
    .locals 4

    iget-object v0, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    const/4 v1, 0x0

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/android/incallui/ContactInfoCache;->onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    return-void
.end method

.method public onPhoneNumberInfoComplete(Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;)V
    .locals 7

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Contact lookup done. Remote contact not found."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    invoke-direct {v0}, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;-><init>()V

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->namePrimary:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getLookupSource()I

    move-result v5

    iput v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getPhoneType()I

    move-result v3

    iput v3, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->labelType:I

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getPhoneLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v3, :cond_5

    iput-object v1, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    :goto_1
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    if-eqz v2, :cond_2

    const-string v5, "geo_description_disable"

    invoke-static {v5}, Lcom/android/incallui/InCallUIFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, ""

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    :goto_2
    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactRingtoneUri:Landroid/net/Uri;

    :cond_2
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->isBusiness()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/ContactInfoCache;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "Business has no image. Using default."

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f020131

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->photo:Landroid/graphics/drawable/Drawable;

    :cond_3
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$400(Lcom/android/incallui/ContactInfoCache;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-virtual {v5, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v5, v6, v0}, Lcom/android/incallui/ContactInfoCache;->access$500(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;)Lcom/android/incallui/ContactUtils;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$600(Lcom/android/incallui/ContactInfoCache;)Lcom/android/incallui/ContactUtils;

    move-result-object v5

    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getLookupKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p0}, Lcom/android/incallui/ContactUtils;->retrieveContactInteractionsFromLookupKey(Ljava/lang/String;Lcom/android/incallui/ContactUtils$Listener;)Z

    move-result v5

    iput-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingContactInteractions:Z

    :cond_4
    invoke-interface {p1}, Lcom/android/incallui/service/PhoneNumberService$PhoneNumberInfo;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_8

    const/4 v5, 0x1

    :goto_3
    iput-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingPhoto:Z

    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingPhoto:Z

    if-nez v5, :cond_0

    iget-boolean v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isLoadingContactInteractions:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    iget-object v6, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->mCallId:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/incallui/ContactInfoCache;->access$300(Lcom/android/incallui/ContactInfoCache;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    iget-object v5, p0, Lcom/android/incallui/ContactInfoCache$PhoneNumberServiceListener;->this$0:Lcom/android/incallui/ContactInfoCache;

    invoke-static {v5}, Lcom/android/incallui/ContactInfoCache;->access$200(Lcom/android/incallui/ContactInfoCache;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v3, v1}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_6

    const/4 v5, 0x0

    :goto_4
    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->label:Ljava/lang/String;

    goto/16 :goto_1

    :cond_6
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_4

    :cond_7
    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    iput-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->location:Ljava/lang/String;

    goto/16 :goto_2

    :cond_8
    const/4 v5, 0x0

    goto :goto_3
.end method
