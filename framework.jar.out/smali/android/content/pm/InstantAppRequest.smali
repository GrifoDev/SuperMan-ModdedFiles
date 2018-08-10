.class public final Landroid/content/pm/InstantAppRequest;
.super Ljava/lang/Object;
.source "InstantAppRequest.java"


# instance fields
.field public final callingPackage:Ljava/lang/String;

.field public final origIntent:Landroid/content/Intent;

.field public final resolvedType:Ljava/lang/String;

.field public final responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

.field public final userId:I

.field public final verificationBundle:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/pm/AuxiliaryResolveInfo;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/pm/InstantAppRequest;->responseObj:Landroid/content/pm/AuxiliaryResolveInfo;

    iput-object p2, p0, Landroid/content/pm/InstantAppRequest;->origIntent:Landroid/content/Intent;

    iput-object p3, p0, Landroid/content/pm/InstantAppRequest;->resolvedType:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/pm/InstantAppRequest;->callingPackage:Ljava/lang/String;

    iput p5, p0, Landroid/content/pm/InstantAppRequest;->userId:I

    iput-object p6, p0, Landroid/content/pm/InstantAppRequest;->verificationBundle:Landroid/os/Bundle;

    return-void
.end method
