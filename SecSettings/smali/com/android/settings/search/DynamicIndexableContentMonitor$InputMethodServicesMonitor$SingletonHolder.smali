.class Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor$SingletonHolder;
.super Ljava/lang/Object;
.source "DynamicIndexableContentMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonHolder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;


# direct methods
.method static synthetic -get0()Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;
    .locals 1

    sget-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor$SingletonHolder;->INSTANCE:Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;-><init>(Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;)V

    sput-object v0, Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor$SingletonHolder;->INSTANCE:Lcom/android/settings/search/DynamicIndexableContentMonitor$InputMethodServicesMonitor;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
