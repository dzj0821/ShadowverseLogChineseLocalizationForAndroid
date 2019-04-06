.class Lrx/android/view/OnSubscribeViewClick$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeViewClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/view/OnSubscribeViewClick;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CachedListeners"
.end annotation


# static fields
.field private static final sCachedListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/view/View;",
            "Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/view/View;)Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    .locals 3
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 88
    sget-object v2, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    .line 90
    .local v0, "cached":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    if-eqz v0, :cond_0

    .line 99
    .end local v0    # "cached":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    :goto_0
    return-object v0

    .line 94
    .restart local v0    # "cached":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    :cond_0
    new-instance v1, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;-><init>(Lrx/android/view/OnSubscribeViewClick$1;)V

    .line 96
    .local v1, "listener":Lrx/android/view/OnSubscribeViewClick$CompositeOnClickListener;
    sget-object v2, Lrx/android/view/OnSubscribeViewClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    move-object v0, v1

    .line 99
    goto :goto_0
.end method
