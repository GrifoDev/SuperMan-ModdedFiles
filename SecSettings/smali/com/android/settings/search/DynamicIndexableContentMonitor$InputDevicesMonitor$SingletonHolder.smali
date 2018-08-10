.class Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor$SingletonHolder;
.super Ljava/lang/Object;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;


# direct methods
.method static synthetic -get0()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;
    .locals 1

    sget-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor$SingletonHolder;->INSTANCE:Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;-><init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;)V

    sput-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor$SingletonHolder;->INSTANCE:Lcom/android/settings/search/DynamicIndexableContentMonitor$InputDevicesMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
