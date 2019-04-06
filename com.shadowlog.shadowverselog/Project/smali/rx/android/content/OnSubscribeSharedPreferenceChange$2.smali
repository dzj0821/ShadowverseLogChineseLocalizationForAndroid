.class Lrx/android/content/OnSubscribeSharedPreferenceChange$2;
.super Ljava/lang/Object;
.source "OnSubscribeSharedPreferenceChange.java"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/android/content/OnSubscribeSharedPreferenceChange;->call(Lrx/Subscriber;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

.field final synthetic val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


# direct methods
.method constructor <init>(Lrx/android/content/OnSubscribeSharedPreferenceChange;Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 0
    .param p1, "this$0"    # Lrx/android/content/OnSubscribeSharedPreferenceChange;

    .prologue
    .line 39
    iput-object p1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

    iput-object p2, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->this$0:Lrx/android/content/OnSubscribeSharedPreferenceChange;

    invoke-static {v0}, Lrx/android/content/OnSubscribeSharedPreferenceChange;->access$000(Lrx/android/content/OnSubscribeSharedPreferenceChange;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lrx/android/content/OnSubscribeSharedPreferenceChange$2;->val$listener:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 43
    return-void
.end method
