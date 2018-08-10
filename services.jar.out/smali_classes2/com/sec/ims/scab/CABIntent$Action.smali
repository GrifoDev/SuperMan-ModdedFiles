.class public Lcom/sec/ims/scab/CABIntent$Action;
.super Ljava/lang/Object;
.source "CABIntent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/ims/scab/CABIntent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# static fields
.field public static final BUSINESS_CONTACTS_ADDED:Ljava/lang/String; = "com.samsung.jansksy.cab.action.BUSINESS_CONTACTS_ADDED"

.field public static final BUSINESS_CONTACTS_DELETED:Ljava/lang/String; = "com.samsung.jansksy.cab.action.BUSINESS_CONTACTS_DELETED"

.field public static final BUSINESS_CONTACTS_UPDATED:Ljava/lang/String; = "com.samsung.jansksy.cab.action.BUSINESS_CONTACTS_UPDATED"

.field public static final CONSUMER_CONTACTS_DELETE_ALL:Ljava/lang/String; = "com.samsung.jansksy.cab.action.CONSUMER_CONTACTS_DELETE_ALL"

.field public static final CONSUMER_CONTACTS_UPLOAD_RESULT:Ljava/lang/String; = "com.samsung.jansksy.cab.action.CONSUMER_CONTACTS_UPLOAD_RESULT"

.field public static final CONSUMER_CONTACTS_UPLOAD_RETRY:Ljava/lang/String; = "com.samsung.jansksy.cab.action.CONSUMER_CONTACTS_UPLOAD_RETRY"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
