.class public interface abstract Lcom/android/dialer/service/CachedNumberLookupService$CachedContactInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dialer/service/CachedNumberLookupService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CachedContactInfo"
.end annotation


# static fields
.field public static final SOURCE_TYPE_CNAP:I = 0x5

.field public static final SOURCE_TYPE_DIRECTORY:I = 0x1

.field public static final SOURCE_TYPE_EXTENDED:I = 0x2

.field public static final SOURCE_TYPE_PLACES:I = 0x3

.field public static final SOURCE_TYPE_PROFILE:I = 0x4


# virtual methods
.method public abstract getContactInfo()Lcom/android/dialer/calllog/ContactInfo;
.end method

.method public abstract setDirectorySource(Ljava/lang/String;J)V
.end method

.method public abstract setExtendedSource(Ljava/lang/String;J)V
.end method

.method public abstract setLookupKey(Ljava/lang/String;)V
.end method

.method public abstract setSource(ILjava/lang/String;J)V
.end method
