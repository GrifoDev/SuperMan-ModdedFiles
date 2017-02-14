.class public final Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;
.super Landroid/content/IntentFilter;
.source "EphemeralResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/EphemeralResolveInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EphemeralResolveIntentInfo"
.end annotation


# instance fields
.field private final mResolveInfo:Landroid/content/pm/EphemeralResolveInfo;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;Landroid/content/pm/EphemeralResolveInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Landroid/content/IntentFilter;)V

    iput-object p2, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->mResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    return-void
.end method


# virtual methods
.method public getEphemeralResolveInfo()Landroid/content/pm/EphemeralResolveInfo;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/EphemeralResolveInfo$EphemeralResolveIntentInfo;->mResolveInfo:Landroid/content/pm/EphemeralResolveInfo;

    return-object v0
.end method
