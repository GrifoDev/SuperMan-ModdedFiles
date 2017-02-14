.class final Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;
.super Ljava/lang/Object;
.source "EphemeralApplicationRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/EphemeralApplicationRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UninstalledEphemeralAppState"
.end annotation


# instance fields
.field final mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

.field final mTimestamp:J


# direct methods
.method public constructor <init>(Landroid/content/pm/EphemeralApplicationInfo;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mEphemeralApplicationInfo:Landroid/content/pm/EphemeralApplicationInfo;

    iput-wide p2, p0, Lcom/android/server/pm/EphemeralApplicationRegistry$UninstalledEphemeralAppState;->mTimestamp:J

    return-void
.end method
