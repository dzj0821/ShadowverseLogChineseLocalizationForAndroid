.class Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;
.super Ljava/lang/Object;
.source "OnSubscribeAdapterViewOnItemClick.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/android/widget/OnSubscribeAdapterViewOnItemClick;
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
            "Landroid/widget/AdapterView",
            "<*>;",
            "Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 83
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    sput-object v0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFromViewOrCreate(Landroid/widget/AdapterView;)Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)",
            "Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;"
        }
    .end annotation

    .prologue
    .line 86
    .local p0, "view":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    sget-object v2, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    .line 88
    .local v0, "cached":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    if-eqz v0, :cond_0

    .line 97
    .end local v0    # "cached":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    :goto_0
    return-object v0

    .line 92
    .restart local v0    # "cached":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    :cond_0
    new-instance v1, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;-><init>(Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$1;)V

    .line 94
    .local v1, "listener":Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CompositeOnClickListener;
    sget-object v2, Lrx/android/widget/OnSubscribeAdapterViewOnItemClick$CachedListeners;->sCachedListeners:Ljava/util/Map;

    invoke-interface {v2, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object v0, v1

    .line 97
    goto :goto_0
.end method
