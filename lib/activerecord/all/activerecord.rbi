# typed: strong

VariadicUntypedFunction = T.type_alias do
  T.any(
    T.proc.returns(T.untyped),
    T.proc.params(arg0: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped, arg7: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped, arg7: T.untyped, arg8: T.untyped).returns(T.untyped),
    T.proc.params(arg0: T.untyped, arg1: T.untyped, arg2: T.untyped, arg3: T.untyped, arg4: T.untyped, arg5: T.untyped, arg6: T.untyped, arg7: T.untyped, arg8: T.untyped, arg9: T.untyped).returns(T.untyped)
    # Currently Sorbet is limited to procs with 9 args: https://github.com/sorbet/sorbet/blob/df6085e6ae9846f033064513ea14f069c68b0bf9/core/SymbolRef.h#L387
  )
end

module ActiveRecord::Associations::ClassMethods
  sig do
    params(
      name: Symbol,
      scope: T.nilable(T.proc.void),
      after_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      after_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      before_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      index_errors: T.nilable(T::Boolean),
      inverse_of: T.nilable(T.any(Symbol, String)),
      join_table: T.nilable(T.any(Symbol, String)),
      primary_key: T.nilable(T.any(Symbol, String)),
      source: T.nilable(T.any(Symbol, String)),
      source_type: T.nilable(T.any(Symbol, String)),
      table_name: T.nilable(T.any(Symbol, String)),
      through: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_many(
    name,
    scope = nil,
    after_add: nil,
    after_remove: nil,
    anonymous_class: nil,
    as: nil,
    autosave: nil,
    before_add: nil,
    before_remove: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    extend: nil,
    foreign_key: nil,
    foreign_type: nil,
    index_errors: nil,
    inverse_of: nil,
    join_table: nil,
    primary_key: nil,
    source: nil,
    source_type: nil,
    table_name: nil,
    through: nil,
    validate: nil,
    &blk
  ); end

  sig do
    params(
      name: Symbol,
      scope: T.nilable(T.proc.void),
      anonymous_class: T.nilable(T.any(Symbol, String)),
      as: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(T.any(Symbol, String)),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String)),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      source: T.nilable(T.any(Symbol, String)),
      source_type: T.nilable(T.any(Symbol, String)),
      through: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_one(
    name,
    scope = nil,
    anonymous_class: nil,
    as: nil,
    autosave: nil,
    class_name: nil,
    dependent: nil,
    foreign_key: nil,
    foreign_type: nil,
    inverse_of: nil,
    primary_key: nil,
    required: nil,
    source: nil,
    source_type: nil,
    through: nil,
    validate: nil,
    &blk
  ); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      scope: T.nilable(T.proc.void),
      autosave: T.nilable(T::Boolean),
      class_name: T.nilable(T.any(Symbol, String)),
      counter_cache: T.nilable(T::Boolean),
      dependent: T.nilable(T.any(Symbol, String)),
      foreign_key: T.nilable(T.any(Symbol, String)),
      foreign_type: T.nilable(T.any(Symbol, String)),
      inverse_of: T.nilable(T.any(Symbol, String)),
      optional: T.nilable(T::Boolean),
      polymorphic: T.nilable(T::Boolean),
      primary_key: T.nilable(T.any(Symbol, String)),
      required: T.nilable(T::Boolean),
      touch: T.nilable(T.any(T::Boolean, Symbol)),
      validate: T.nilable(T::Boolean),
      default: T.nilable(T.proc.returns(T.untyped))
    ).void
  end
  def belongs_to(
    name,
    scope = nil,
    autosave: nil,
    class_name: nil,
    counter_cache: nil,
    dependent: nil,
    foreign_key: nil,
    foreign_type: nil,
    inverse_of: nil,
    optional: nil,
    polymorphic: nil,
    primary_key: nil,
    required: nil,
    touch: nil,
    validate: nil,
    default: nil
  ); end

  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      scope: T.nilable(T.proc.void),
      after_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      after_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      association_foreign_key: T.nilable(T.any(Symbol, String)),
      autosave: T.nilable(T::Boolean),
      before_add: T.nilable(T.any(Symbol, String, T.proc.void)),
      before_remove: T.nilable(T.any(Symbol, String, T.proc.void)),
      class_name: T.nilable(T.any(Symbol, String)),
      extend: T.nilable(T.any(Module, T::Array[Module])),
      foreign_key: T.nilable(T.any(Symbol, String)),
      join_table: T.nilable(T.any(Symbol, String)),
      validate: T.nilable(T::Boolean),
      blk: T.nilable(T.proc.void)
    ).void
  end
  def has_and_belongs_to_many(
    name,
    scope = nil,
    after_add: nil,
    after_remove: nil,
    association_foreign_key: nil,
    autosave: nil,
    before_add: nil,
    before_remove: nil,
    class_name: nil,
    extend: nil,
    foreign_key: nil,
    join_table: nil,
    validate: nil,
    &blk
  ); end
end

module ActiveRecord::AttributeMethods
  include ActiveModel::AttributeMethods
end

module ActiveRecord::AttributeMethods::Serialization::ClassMethods
  sig { params(attr_name: Symbol, class_name_or_coder: T.untyped).void }
  def serialize(attr_name, class_name_or_coder = Object); end
end

module ActiveRecord::NestedAttributes::ClassMethods
  sig do
    params(
      attr_names: T.any(T.any(Symbol, String), T::Array[T.any(Symbol, String)]),
      allow_destroy: T.nilable(T::Boolean),
      reject_if: T.any(Symbol, T.proc.returns(T::Boolean)),
      limit: T.any(Integer, Symbol, T.proc.returns(Integer)),
      update_only: T.nilable(T::Boolean),
    ).void
  end
  def accepts_nested_attributes_for(
    attr_names,
    allow_destroy: nil,
    reject_if: nil,
    limit: nil,
    update_only: nil
  ); end
end

module ActiveRecord::Scoping::Named::ClassMethods
  sig do
    params(
      name: T.nilable(T.any(Symbol, String)),
      body: VariadicUntypedFunction,
      blk: T.nilable(VariadicUntypedFunction)
    ).void
  end
  def scope(
    name,
    body,
    &blk
  ); end
end

module ActiveRecord::Scoping::Default::ClassMethods
end

module ActiveRecord::Inheritance
  mixes_in_class_methods(ActiveRecord::Inheritance::ClassMethods)
end

class ActiveRecord::Base
  extend ActiveModel::Naming

  extend ActiveSupport::Benchmarkable
  extend ActiveSupport::DescendantsTracker

  extend ActiveRecord::ConnectionHandling
  extend ActiveRecord::QueryCache::ClassMethods
  extend ActiveRecord::Querying
  extend ActiveRecord::Translation
  extend ActiveRecord::DynamicMatchers
  extend ActiveRecord::Explain
  extend ActiveRecord::Enum

  include ActiveRecord::Core
  include ActiveRecord::Persistence
  include ActiveRecord::ReadonlyAttributes
  include ActiveRecord::ModelSchema
  include ActiveRecord::Inheritance
  include ActiveRecord::Scoping
  include ActiveRecord::Scoping::Default # via ActiveRecord::Scoping#included hook
  extend ActiveRecord::Scoping::Default::ClassMethods # via ActiveRecord::Scoping::Default Concern inclusion
  include ActiveRecord::Scoping::Named # via ActiveRecord::Scoping#included hook
  extend ActiveRecord::Scoping::Named::ClassMethods # via ActiveRecord::Scoping::Named Concern inclusion
  include ActiveRecord::Sanitization
  include ActiveRecord::AttributeAssignment
  include ActiveModel::Conversion
  include ActiveRecord::Integration
  include ActiveRecord::Validations
  include ActiveRecord::CounterCache
  include ActiveRecord::Attributes
  include ActiveRecord::AttributeDecorators
  include ActiveRecord::Locking::Optimistic
  include ActiveRecord::Locking::Pessimistic
  include ActiveRecord::AttributeMethods
  include ActiveRecord::AttributeMethods::Read # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Write # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::BeforeTypeCast # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Query # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::PrimaryKey # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::TimeZoneConversion # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Dirty # via ActiveRecord::AttributeMethods#included hook
  include ActiveRecord::AttributeMethods::Serialization # via ActiveRecord::AttributeMethods#included hook
  extend ActiveRecord::AttributeMethods::Serialization::ClassMethods # via ActiveRecord::AttributeMethods::Serialization Concern inclusion
  include ActiveRecord::Callbacks
  include ActiveRecord::Timestamp
  include ActiveRecord::Associations
  include ActiveModel::SecurePassword
  include ActiveRecord::AutosaveAssociation
  include ActiveRecord::NestedAttributes
  extend ActiveRecord::NestedAttributes::ClassMethods # via ActiveRecord::NestedAttributes Concern inclusion
  include ActiveRecord::Aggregations
  include ActiveRecord::Transactions
  include ActiveRecord::NoTouching
  include ActiveRecord::Reflection
  include ActiveRecord::Serialization
  include ActiveRecord::Store

  sig do
    params(
      arg: Symbol,
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol])),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_commit(
    arg,
    if: nil,
    on: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_create(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_destroy(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_rollback(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_save(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.after_update(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol]))
    ).void
  end
  def self.after_validation(
    arg = nil,
    if: nil,
    unless: nil,
    on: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_create(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_destroy(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_save(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.around_update(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_create(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_destroy(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_save(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean))))
    ).void
  end
  def self.before_update(
    arg = nil,
    if: nil,
    unless: nil
  ); end

  sig do
    params(
      arg: T.nilable(Symbol),
      if: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      unless: T.nilable(T.any(Symbol, Proc, T.proc.params(arg0: T.untyped).returns(T.nilable(T::Boolean)))),
      on: T.nilable(T.any(Symbol, T::Array[Symbol]))
    ).void
  end
  def self.before_validation(
    arg = nil,
    if: nil,
    unless: nil,
    on: nil
  ); end
end

module ActiveRecord::Inheritance::ClassMethods
  sig { params(value: T::Boolean).void }
  def abstract_class=(value); end

  sig { returns(T::Boolean) }
  def abstract_class; end
end

module ActiveRecord::Persistence
  mixes_in_class_methods(ActiveRecord::Persistence::ClassMethods)

  sig { params(klass: Class).returns(T.untyped) }
  def becomes!(klass); end

  sig { params(klass: Class).returns(T.untyped) }
  def becomes(klass); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer),
      touch: T.nilable(T::Boolean)
    ).returns(T.self_type)
  end
  def decrement!(attribute, by = 1, touch: nil); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def decrement(attribute, by = 1); end

  sig { returns(T::Boolean) }
  def destroyed?(); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer),
      touch: T.nilable(T::Boolean)
    ).returns(T.self_type)
  end
  def increment!(attribute, by = 1, touch: nil); end

  sig do
    params(
      attribute: T.any(Symbol, String),
      by: T.nilable(Integer)
    ).returns(T.self_type)
  end
  def increment(attribute, by = 1); end

  sig { returns(T::Boolean) }
  def new_record?(); end

  sig { returns(T::Boolean) }
  def persisted?(); end

  sig do
    params(
      options: T.nilable({ lock: T.nilable(T::Boolean) })
    ).returns(T.self_type)
  end
  def reload(options = nil); end

  sig do
    params(
      args: T.untyped,
      blk: T.proc.void,
    ).returns(TrueClass)
  end
  def save!(*args, &blk); end

  sig do
    params(
      args: T.untyped,
      blk: T.proc.void,
    ).returns(T::Boolean)
  end
  def save(*args, &blk); end

  sig { params(attribute: T.any(Symbol, String)).returns(TrueClass) }
  def toggle!(attribute); end

  sig { params(attribute: T.any(Symbol, String)).returns(T.self_type) }
  def toggle(attribute); end

  sig do
    params(
      names: T.any(
        Symbol,
        String,
        T::Array[T.any(Symbol, String)]
      ),
      time: T.nilable(Time)
    ).returns(T::Boolean)
  end
  def touch(*names, time: nil); end

  sig do
    params(
      name: T.any(Symbol, String),
      value: T.untyped,
    ).returns(T::Boolean)
  end
  def update_attribute(name, value); end

  sig do
    params(
      name: T.any(Symbol, String),
      value: T.untyped,
    ).returns(T::Boolean)
  end
  def update_column(name, value); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped]
    ).returns(T::Boolean)
  end
  def update_columns(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(TrueClass)
  end
  def update!(attributes); end

  # update_attributes! is an alias of update!
  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(TrueClass)
  end
  def update_attributes!(attributes); end

  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update(attributes); end

  # update_attributes is an alias of update
  sig do
    params(
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        ActionController::Parameters
      )
    ).returns(T::Boolean)
  end
  def update_attributes(attributes); end
end

module ActiveRecord::Persistence::ClassMethods
  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def create!(attributes = nil, &blk); end

  sig do
    params(
      attributes: T.nilable(T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )),
      blk: T.nilable(T.proc.params(arg0: T.untyped).returns(T.untyped))
    ).returns(T.untyped)
  end
  def create(attributes = nil, &blk); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def delete(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def destroy!(id_or_array); end

  sig do
    params(
      id_or_array: T.any(T.untyped, T::Array[T.untyped])
    ).returns(T.untyped)
  end
  def destroy(id_or_array); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)]))
    ).returns(ActiveRecord::Result)
  end
  def insert_all!(attributes, returning: nil); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert_all(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert!(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def insert(attributes, returning: nil, unique_by: nil); end

  sig { params(attributes: T.untyped, column_types: T::Hash[T.untyped, T.untyped], blk: T.proc.void).returns(T.untyped) }
  def instantiate(attributes, column_types = {}, &blk); end

  # The 'attributes' parameter can take either a hash or an array of hashes.
  sig do
    params(
      id: T.any(T.untyped, T::Array[T.untyped], Symbol),
      attributes: T.any(
        T::Hash[T.any(Symbol, String), T.untyped],
        T::Array[T::Hash[T.any(Symbol, String), T.untyped]]
      )
    ).returns(T.any(T::Array[T.untyped], T.untyped))
  end
  def update(id = :all, attributes); end

  sig do
    params(
      attributes: T::Array[T::Hash[T.any(Symbol, String), T.untyped]],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def upsert_all(attributes, returning: nil, unique_by: nil); end

  sig do
    params(
      attributes: T::Hash[T.any(Symbol, String), T.untyped],
      returning: T.nilable(T.any(FalseClass, T::Array[T.any(Symbol, String)])),
      unique_by: T.nilable(T.untyped)
    ).returns(ActiveRecord::Result)
  end
  def upsert(attributes, returning: nil, unique_by: nil); end
end

class ActiveRecord::Result; end

class ActiveRecord::Type::Value
  extend T::Sig

  sig { params(args: T.untyped).void }
  def initialize(args); end

  sig { params(value: T.untyped).returns(T.untyped) }
  def cast(value); end
end

class ActiveRecord::Type::Boolean < ActiveRecord::Type::Value
  extend T::Sig

  sig { params(args: T.untyped).void }
  def initialize(args = nil); end

  sig { params(value: T.untyped).returns(T.nilable(T::Boolean)) }
  def cast(value); end
end

module ActiveRecord
  class ActiveRecordError < StandardError; end
  class AdapterNotFound < ActiveRecordError; end
  class AdapterNotSpecified < ActiveRecordError; end
  class AmbiguousSourceReflectionForThroughAssociation < ActiveRecordError; end
  class AssociationNotFoundError < ConfigurationError; end
  class AssociationTypeMismatch < ActiveRecordError; end
  class AttributeAssignmentError < ActiveRecordError; end
  class ConcurrentMigrationError < MigrationError; end
  class ConfigurationError < ActiveRecordError; end
  class ConnectionNotEstablished < ActiveRecordError; end
  class ConnectionTimeoutError < ConnectionNotEstablished; end
  class DangerousAttributeError < ActiveRecordError; end
  class Deadlocked < TransactionRollbackError; end
  class DeleteRestrictionError < ActiveRecordError; end
  class DuplicateMigrationNameError < MigrationError; end
  class DuplicateMigrationVersionError < MigrationError; end
  class EagerLoadPolymorphicError < ActiveRecordError; end
  class EnvironmentMismatchError < ActiveRecordError; end
  class ExclusiveConnectionTimeoutError < ConnectionTimeoutError; end
  class FixtureClassNotFound < ActiveRecordError; end
  class HasManyThroughAssociationNotFoundError < ActiveRecordError; end
  class HasManyThroughAssociationPointlessSourceTypeError < ActiveRecordError; end
  class HasManyThroughAssociationPolymorphicSourceError < ActiveRecordError; end
  class HasManyThroughAssociationPolymorphicThroughError < ActiveRecordError; end
  class HasManyThroughCantAssociateThroughHasOneOrManyReflection < ThroughCantAssociateThroughHasOneOrManyReflection; end
  class HasManyThroughNestedAssociationsAreReadonly < ThroughNestedAssociationsAreReadonly; end
  class HasManyThroughOrderError < ActiveRecordError; end
  class HasManyThroughSourceAssociationNotFoundError < ActiveRecordError; end
  class HasOneAssociationPolymorphicThroughError < ActiveRecordError; end
  class HasOneThroughCantAssociateThroughCollection < ActiveRecordError; end
  class HasOneThroughCantAssociateThroughHasOneOrManyReflection < ThroughCantAssociateThroughHasOneOrManyReflection; end
  class HasOneThroughNestedAssociationsAreReadonly < ThroughNestedAssociationsAreReadonly; end
  class IllegalMigrationNameError < MigrationError; end
  class ImmutableRelation < ActiveRecordError; end
  class InvalidForeignKey < WrappedDatabaseException; end
  class InverseOfAssociationNotFoundError < ActiveRecordError; end
  class IrreversibleMigration < MigrationError; end
  class IrreversibleOrderError < ActiveRecordError; end
  class LockWaitTimeout < StatementInvalid; end
  class MigrationError < ActiveRecordError; end
  class MismatchedForeignKey < StatementInvalid; end
  class MultiparameterAssignmentErrors < ActiveRecordError; end
  class NoDatabaseError < StatementInvalid; end
  class NoEnvironmentInSchemaError < MigrationError; end
  class NotNullViolation < StatementInvalid; end
  class PendingMigrationError < MigrationError; end
  class PreparedStatementCacheExpired < StatementInvalid; end
  class PreparedStatementInvalid < ActiveRecordError; end
  class ProtectedEnvironmentError < ActiveRecordError; end
  class QueryCanceled < StatementInvalid; end
  class RangeError < StatementInvalid; end
  class ReadOnlyRecord < ActiveRecordError; end
  class RecordInvalid < ActiveRecordError; end
  class RecordNotDestroyed < ActiveRecordError; end
  class RecordNotFound < ActiveRecordError; end
  class RecordNotSaved < ActiveRecordError; end
  class RecordNotUnique < WrappedDatabaseException; end
  class Rollback < ActiveRecordError; end
  class SerializationFailure < TransactionRollbackError; end
  class SerializationTypeMismatch < ActiveRecordError; end
  class StaleObjectError < ActiveRecordError; end
  class StatementInvalid < ActiveRecordError; end
  class StatementTimeout < StatementInvalid; end
  class SubclassNotFound < ActiveRecordError; end
  class ThroughCantAssociateThroughHasOneOrManyReflection < ActiveRecordError; end
  class ThroughNestedAssociationsAreReadonly < ActiveRecordError; end
  class TransactionIsolationError < ActiveRecordError; end
  class TransactionRollbackError < StatementInvalid; end
  class TypeConflictError < StandardError; end
  class UnknownAttributeError < NoMethodError; end
  class UnknownAttributeReference < ActiveRecordError; end
  class UnknownMigrationVersionError < MigrationError; end
  class UnknownPrimaryKey < ActiveRecordError; end
  class ValueTooLong < StatementInvalid; end
  class WrappedDatabaseException < StatementInvalid; end
end

class ActiveRecord::Schema < ActiveRecord::Migration::Current
  sig {params(info: T::Hash[T.untyped, T.untyped], blk: T.proc.bind(ActiveRecord::Schema).void).void}
  def self.define(info = nil, &blk); end
end

module ActiveRecord::AttributeMethods::Dirty
  extend T::Sig
  sig { params(attr_name: Symbol, options: T.untyped).returns(T::Boolean) }
  def saved_change_to_attribute?(attr_name, **options); end
end

module ActiveRecord::Associations
  mixes_in_class_methods(ActiveRecord::Associations::ClassMethods)
end

module ActiveRecord::Validations
  include ActiveModel::Validations

  mixes_in_class_methods(ActiveModel::Validations::ClassMethods)

  sig { params(options: T.untyped).returns(T::Boolean) }
  def save(options = nil); end

  sig { params(options: T.untyped).returns(TrueClass) }
  def save!(options = nil); end
end

# Represents the schema of an SQL table in an abstract way. This class
# provides methods for manipulating the schema representation.
#
# Inside migration files, the `t` object in `create_table`
# is actually of this type:
#
# ```ruby
# class SomeMigration < ActiveRecord::Migration[5.0]
#   def up
#     create_table :foo do |t|
#       puts t.class  # => "ActiveRecord::ConnectionAdapters::TableDefinition"
#     end
#   end
#
#   def down
#     # ...
#   end
# end
# ```
class ActiveRecord::ConnectionAdapters::TableDefinition
  include ActiveRecord::ConnectionAdapters::ColumnMethods

  # Returns an array of ColumnDefinition objects for the columns of the table.
  sig { returns(T::Array[ActiveRecord::ConnectionAdapters::ColumnDefinition]) }
  def columns; end

  # Returns a ColumnDefinition for the column with name `name`.
  sig { params(name: T.any(String, Symbol)).returns(ActiveRecord::ConnectionAdapters::ColumnDefinition) }
  def [](name); end

  sig do
    params(
      name: T.any(String, Symbol),
      type: T.untyped,
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).returns(T.self_type)
  end
  def column(
    name,
    type,
    index: nil,
    default: nil,
    **options
  ); end

  # Remove the column `name` from the table.
  #
  # ```ruby
  # remove_column(:account_id)
  # ```
  sig { params(name: T.any(String, Symbol)).void }
  def remove_column(name); end

  # Adds index options to the indexes hash, keyed by column name
  # This is primarily used to track indexes that need to be created after the table
  #
  # ```ruby
  # index(:account_id, name: 'index_projects_on_account_id')
  # ```
  sig do
    params(
      column_name: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped
    ).void
  end
  def index(column_name, options = {}); end

  # Appends `:datetime` columns `:created_at` and
  # `:updated_at` to the table.
  #
  # ```ruby
  # t.timestamps null: false
  # ```
  sig { params(options: T.untyped).void }
  def timestamps(**options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # t.belongs_to(:supplier, foreign_key: true, type: :integer)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def references(*args, **options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # t.belongs_to(:supplier, foreign_key: true, type: :integer)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def belongs_to(*args, **options); end
end

module ActiveRecord::ConnectionAdapters::ColumnMethods
  # Appends a primary key definition to the table definition.
  # Can be called multiple times, but this is probably not a good idea.
  sig do
    params(
      name: T.any(String, Symbol),
      type: T.any(String, Symbol),
      options: T.untyped
    ).void
  end
  def primary_key(name, type = :primary_key, **options); end

  ########
  # NOTE: The following methods are all generated dynamically and have the same parameters.
  # See https://github.com/rails/rails/blob/v6.0.0/activerecord/lib/active_record/connection_adapters/abstract/schema_definitions.rb#L217
  ########

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def bigint(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def binary(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def boolean(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def date(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def datetime(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def decimal(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def numeric(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def float(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def integer(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def json(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def string(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def text(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def time(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def timestamp(*names, index: nil, default: nil, **options); end

  sig do
    params(
      names: T.any(String, Symbol),
      index: T.any(T::Hash[T.untyped, T.untyped], T::Boolean),
      default: T.untyped,
      options: T.untyped
    ).void
  end
  def virtual(*names, index: nil, default: nil, **options); end
end

# Represents an SQL table in an abstract way for updating a table.
#
# Available transformations are:
#
# ```ruby
# change_table :table do |t|
#   t.primary_key
#   t.column
#   t.index
#   t.rename_index
#   t.timestamps
#   t.change
#   t.change_default
#   t.rename
#   t.references
#   t.belongs_to
#   t.string
#   t.text
#   t.integer
#   t.bigint
#   t.float
#   t.decimal
#   t.numeric
#   t.datetime
#   t.timestamp
#   t.time
#   t.date
#   t.binary
#   t.boolean
#   t.foreign_key
#   t.json
#   t.virtual
#   t.remove
#   t.remove_foreign_key
#   t.remove_references
#   t.remove_belongs_to
#   t.remove_index
#   t.remove_timestamps
# end
# ```
class ActiveRecord::ConnectionAdapters::Table
  include ActiveRecord::ConnectionAdapters::ColumnMethods

  # Adds a new column to the named table.
  #
  # ```ruby
  # t.column(:name, :string)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).void }
  def column(column_name, type, **options); end

  # Checks to see if a column exists.
  #
  # ```ruby
  # t.string(:name) unless t.column_exists?(:name, :string)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).returns(T::Boolean) }
  def column_exists?(column_name, type = nil, options = {}); end

  # Adds a new index to the table. `column_name` can be a single Symbol, or
  # an Array of Symbols.
  #
  # ```ruby
  # t.index(:name)
  # t.index([:branch_id, :party_id], unique: true)
  # t.index([:branch_id, :party_id], unique: true, name: 'by_branch_party')
  # ```
  sig do
    params(
      column_name: T.any(String, Symbol, T::Array[T.any(String, Symbol)]),
      options: T.untyped
    ).void
  end
  def index(column_name, options = {}); end

  # Checks to see if an index exists.
  #
  # ```ruby
  # unless t.index_exists?(:branch_id)
  #   t.index(:branch_id)
  # end
  # ```
  sig { params(column_name: T.any(String, Symbol), options: T.untyped).returns(T::Boolean) }
  def index_exists?(column_name, options = {}); end

  # Renames the given index on the table.
  #
  # ```ruby
  # t.rename_index(:user_id, :account_id)
  # ```
  sig { params(index_name: T.any(String, Symbol), new_index_name: T.any(String, Symbol)).void }
  def rename_index(index_name, new_index_name); end

  # Adds timestamps (`created_at` and `updated_at`) columns to the table.
  #
  # ```ruby
  # t.timestamps(null: false)
  # ```
  def timestamps(options = {}); end

  # Changes the column's definition according to the new options.
  #
  # ```ruby
  # t.change(:name, :string, limit: 80)
  # t.change(:description, :text)
  # ```
  sig { params(column_name: T.any(String, Symbol), type: Symbol, options: T.untyped).void }
  def change(column_name, type, options = {}); end

  # Sets a new default value for a column.
  #
  # ```ruby
  # t.change_default(:qualification, 'new')
  # t.change_default(:authorized, 1)
  # t.change_default(:status, from: nil, to: "draft")
  # ```
  sig { params(column_name: T.any(String, Symbol), default_or_changes: T.untyped).void }
  def change_default(column_name, default_or_changes); end

  # Removes the column(s) from the table definition.
  #
  # ```ruby
  # t.remove(:qualification)
  # t.remove(:qualification, :experience)
  # ```
  sig { params(column_names: T.any(String, Symbol)).void }
  def remove(*column_names); end

  # Removes the given index from the table.
  #
  # ```ruby
  # t.remove_index(:branch_id)
  # t.remove_index(column: [:branch_id, :party_id])
  # t.remove_index(name: :by_branch_party)
  # ```
  sig { params(options: T.untyped).void }
  def remove_index(options = {}); end

  # Removes the timestamp columns (`created_at` and `updated_at`) from the table.
  #
  # ```ruby
  # t.remove_timestamps
  # ```
  sig { params(options: T.untyped).void }
  def remove_timestamps(options = {}); end

  # Renames a column.
  #
  # ```ruby
  # t.rename(:description, :name)
  # ```
  sig { params(column_name: T.any(String, Symbol), new_column_name: T.any(String, Symbol)).void }
  def rename(column_name, new_column_name); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def references(*args, **options); end

  # Adds a reference.
  #
  # ```ruby
  # t.references(:user)
  # t.belongs_to(:supplier, foreign_key: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def belongs_to(*args, **options); end

  # Removes a reference. Optionally removes a `type` column.
  #
  # ```ruby
  # t.remove_references(:user)
  # t.remove_belongs_to(:supplier, polymorphic: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def remove_references(*args, **options); end

  # Removes a reference. Optionally removes a `type` column.
  #
  # ```ruby
  # t.remove_references(:user)
  # t.remove_belongs_to(:supplier, polymorphic: true)
  # ```
  sig { params(args: T.untyped, options: T.untyped).void }
  def remove_belongs_to(*args, **options); end

  # Adds a foreign key to the table using a supplied table name.
  #
  # ```ruby
  # t.foreign_key(:authors)
  # t.foreign_key(:authors, column: :author_id, primary_key: "id")
  # ```
  sig { params(args: T.untyped).void }
  def foreign_key(*args); end

  # Removes the given foreign key from the table.
  #
  # ```ruby
  # t.remove_foreign_key(:authors)
  # t.remove_foreign_key(column: :author_id)
  # ```
  sig { params(args: T.untyped).void }
  def remove_foreign_key(*args); end

  # Checks to see if a foreign key exists.
  #
  # ```ruby
  # t.foreign_key(:authors) unless t.foreign_key_exists?(:authors)
  # ```
  sig { params(args: T.untyped).returns(T::Boolean) }
  def foreign_key_exists?(*args); end
end

module ActiveRecord::Locking::Pessimistic
  # Returns `nil` if `ActiveRecord::Rollback` is raised.
  sig do
    type_parameters(:U)
      .params(
        lock: T.any(String, TrueClass),
        blk: T.proc.returns(T.type_parameter(:U)),
      )
      .returns(T.nilable(T.type_parameter(:U)))
  end
  def with_lock(lock = nil, &blk); end
end

