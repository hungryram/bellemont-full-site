import React from "react";

interface SelectOptionProps {
  id: number;
  value: string;
}
export interface FormSelectProps {
  name: string;
  placeholder: string;
  onChange: (
    event: React.ChangeEvent<HTMLInputElement | HTMLSelectElement>
  ) => void;
  resetSelect: string;
  error?: boolean;
  values: SelectOptionProps[];
  required?: boolean;
  className?: string;
}
