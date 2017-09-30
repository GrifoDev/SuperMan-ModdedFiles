.class public interface abstract Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/LocalContactSyncListener;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/listener/ContactSyncListener;


# virtual methods
.method public abstract localContactSyncDone(Landroid/os/Bundle;)V
.end method

.method public abstract onDeleteContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V
.end method

.method public abstract onInsertContact(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/LocalContactSyncResponse;)Lcom/samsung/android/sdk/enhancedfeatures/contact/internal/sync/data/ImageMetaList;
.end method

.method public abstract onInsertContactForDuplicateNumber(Lcom/samsung/android/sdk/enhancedfeatures/contact/apis/response/ProfileDetails;)V
.end method
