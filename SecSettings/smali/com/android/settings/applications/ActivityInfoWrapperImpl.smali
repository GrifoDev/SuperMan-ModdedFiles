.class public Lcom/android/settings/applications/ActivityInfoWrapperImpl;
.super Ljava/lang/Object;
.source "ActivityInfoWrapperImpl.java"

# interfaces
.implements Lcom/android/settings/applications/ActivityInfoWrapper;


# instance fields
.field private final mInfo:Landroid/content/pm/ActivityInfo;


# direct methods
.method public constructor <init>(Landroid/content/pm/ActivityInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/ActivityInfoWrapperImpl;->mInfo:Landroid/content/pm/ActivityInfo;

    return-void
.end method


# virtual methods
.method public supportsPictureInPicture()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/ActivityInfoWrapperImpl;->mInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v0

    return v0
.end method
