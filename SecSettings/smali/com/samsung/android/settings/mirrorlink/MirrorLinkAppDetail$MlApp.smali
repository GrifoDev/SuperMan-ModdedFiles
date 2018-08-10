.class public Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;
.super Ljava/lang/Object;
.source "MirrorLinkAppDetail.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MlApp"
.end annotation


# instance fields
.field public mAppName:Ljava/lang/String;

.field public mEntityName:Ljava/lang/String;

.field public mNonRestricted:Ljava/lang/String;

.field public mRestricted:Ljava/lang/String;

.field public mStatus:Ljava/lang/String;

.field public mValidDate:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/mirrorlink/MirrorLinkAppDetail$MlApp;->mAppName:Ljava/lang/String;

    return-void
.end method
